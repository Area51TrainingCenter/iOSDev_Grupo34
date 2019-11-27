//
//  StaticTableViewController.swift
//  Clase5
//
//  Created by Alumno on 11/26/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class StaticTableViewController : UITableViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveAction(_ sender: Any) {
        guard let username = userTextField.text, !username.isEmpty else {
            print("Variable vacia")
            showAlert(title: "Ingresa tu usuario", message: "Para validar tu usuario necesitamos que lo ingreses")
            return
        }
        
        print(username)
        
    }
    
    func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (alert) in
            print("Se presionó OK")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive) { (alert) in
            print("Cancel")
        }
        let atAction = UIAlertAction(title: "Another", style: .destructive) { (alert) in
            print("Cancel")
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        alert.addAction(atAction)
        present(alert, animated: true, completion: nil)
    }
}
