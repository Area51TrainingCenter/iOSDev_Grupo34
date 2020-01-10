//
//  ViewController.swift
//  Clase14
//
//  Created by Alumno on 1/9/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PersonProtocol {
    

    @IBOutlet weak var peopleTableView: UITableView!
    
    var cells = [People]()
    var personSelected : People?
    var position : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Primordial para mostrar información en la tabla
        self.peopleTableView.delegate = self
        self.peopleTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCellID", for: indexPath) as! PersonTableViewCell
        cell.people = self.cells[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cells.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = self.cells[indexPath.row]
        self.personSelected = person
        self.position = indexPath.row
        performSegue(withIdentifier: "goRegister", sender: nil)
    }
    
    func savePerson(_ value: People) {
        let person = value
        self.cells.append(person)
        
        self.peopleTableView.reloadData()
    }
    
    func editPerson(_ value: People, position: Int) {
        self.cells.remove(at: position)
        self.cells.insert(value, at: position)
        self.personSelected = nil
        self.position = nil
        self.peopleTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goRegister" {
            let controller = segue.destination as! RegisterViewController
            controller.delegate = self
            controller.personToEdit = personSelected
            controller.position = position
        }
    }
    
}

struct People {
    let name : String
    let lastname : String
}

