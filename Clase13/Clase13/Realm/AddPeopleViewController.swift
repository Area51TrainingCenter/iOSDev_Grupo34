//
//  AddPeopleViewController.swift
//  Clase13
//
//  Created by Alumno on 1/7/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit
import RealmSwift

class AddPeopleViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveAction(_ sender: Any) {
        guard let name = nameTextField.text, !name.isEmpty else {
            //Alerta que te indique que ingreses
            return
        }
        guard let lastname = lastnameTextField.text, !lastname.isEmpty else {
            //Alerta que te indique que ingreses
            return
        }
        guard let age = ageTextField.text, !age.isEmpty else {
            //Alerta que te indique que ingreses
            return
        }
        
        let realm = try! Realm()
        try! realm.write {
            let person = PeopleRealm()
            person.name = name
            person.lastname = lastname
            person.age = Int(age)!
            //Se agregó el registro
            realm.add(person)
            self.nameTextField.text = ""
            self.lastnameTextField.text = ""
            self.ageTextField.text = ""
            let alertController = UIAlertController(title: "Éxito", message: "Se agregó a la persona", preferredStyle: .alert)
            let actionCancel = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(actionCancel)
            present(alertController, animated: true, completion: nil)
        }
    }
}
