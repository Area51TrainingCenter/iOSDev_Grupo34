//
//  RegisterViewController.swift
//  Clase14
//
//  Created by Alumno on 1/9/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit

protocol PersonProtocol {
    func savePerson(_ value: People)
    func editPerson(_ value: People, position: Int)
}

class RegisterViewController : UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    
    var delegate : PersonProtocol?
    var personToEdit: People?
    var position: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let editing = personToEdit {
            self.nameTextField.text = editing.name
            self.lastnameTextField.text = editing.lastname
        }
    }
    
    @IBAction func saveAction(_ sender: Any) {
        guard let name = nameTextField.text else {
            return
        }
        guard let lastname = lastnameTextField.text else {
            return
        }
        let person = People(name: name, lastname: lastname)
        if let _ = personToEdit {
            //hay algo para editar
            self.delegate?.editPerson(person, position: self.position!)
        } else {
            self.delegate?.savePerson(person)
        }
        
        //Retorno a la vista anterior
        self.navigationController?.popViewController(animated: true)
        
    }
}
