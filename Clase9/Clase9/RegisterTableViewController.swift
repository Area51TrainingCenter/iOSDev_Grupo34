//
//  RegisterTableViewController.swift
//  Clase9
//
//  Created by Alumno on 12/10/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterTableViewController: UITableViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveAction(_ sender: Any) {
        guard let username = emailTextField.text, !username.isEmpty else {
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        SVProgressHUD.setForegroundColor(UIColor.red)
        SVProgressHUD.setBackgroundColor(UIColor.white)
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: username, password: password) { (auth, error) in
            SVProgressHUD.dismiss()
            if let error = error {
                print(error.localizedDescription)
                AlertHelper.show(title: "Error", message: "Ha ocurrido un error. \(error.localizedDescription)", viewController: self, completionHandler: { (value) in
                    //
                })
                return
            }
            guard let auth = auth else {
                return
            }
            print(auth.user.email)
            print(auth.user.uid)
            print("El usuario se creó")
            AlertHelper.show(title: "Éxito", message: "El usuario se creó correctamente", viewController: self, completionHandler: { (value) in
                self.navigationController?.popViewController(animated: true)
            })
            
        }
    }
    
}
