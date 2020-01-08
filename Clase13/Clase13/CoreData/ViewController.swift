//
//  ViewController.swift
//  Clase13
//
//  Created by Alumno on 1/7/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var peopleTableView: UITableView!
    
    var names = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peopleTableView.delegate = self
        peopleTableView.dataSource = self
        peopleTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "People")
        do {
            names = try managedContext.fetch(fetchRequest)
            self.peopleTableView.reloadData()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
    }

    @IBAction func addPerson(_ sender: Any) {
        let alertController = UIAlertController(title: "Agrega una persona", message: "Coloca el nombre de la persona", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Guardar", style: .default) { (action) in
            guard let textfield = alertController.textFields?.first, let name = textfield.text else {
                return
            }
            //Save
            self.saveName(name)
            self.peopleTableView.reloadData()
        }
        let actionCancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alertController.addTextField(configurationHandler: nil)
//        alertController.addTextField { (textfield) in
//            textfield.placeholder = "asdasd"
//        }
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        present(alertController, animated: true, completion: nil)
        
    }
    
    func saveName(_ name: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        //Obtienes el contexto
        let managedContext = appDelegate.persistentContainer.viewContext
        //Obtienes la entidad de la que necesitas información
        let entity = NSEntityDescription.entity(forEntityName: "People", in: managedContext)!
        //Obtienes el ManagedObject
        let person = NSManagedObject(entity: entity, insertInto: managedContext)
        person.setValue(name, forKey: "name")
        
        do {
            try managedContext.save()
            names.append(person)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        let person = self.names[indexPath.row]
        
        cell.textLabel?.text = person.value(forKeyPath: "name") as? String
        return cell
    }
    
}

