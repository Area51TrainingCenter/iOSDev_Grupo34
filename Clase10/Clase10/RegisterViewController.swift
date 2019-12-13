//
//  RegisterViewController.swift
//  Clase10
//
//  Created by Alumno on 12/12/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var ref : DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
    }
    
    @IBAction func registerAction(_ sender: Any) {
        guard let mail = mailTextField.text, !mail.isEmpty else {
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        Auth.auth().createUser(withEmail: mail, password: password) { (auth, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            if let uid = auth?.user.uid {
                print(uid)
                self.ref.child("users").child(uid).setValue(["uid":uid, "email":mail])
                self.navigationController?.popViewController(animated: true)
            }
        }
        
    }
}
