//
//  ViewController.swift
//  Clase10
//
//  Created by Alumno on 12/12/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginAction(_ sender: Any) {
        guard let mail = mailTextField.text, !mail.isEmpty else {
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        Auth.auth().signIn(withEmail: mail, password: password) { (auth, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            if let auth = auth {
                let userid = auth.user.uid
                UserDefaults.standard.set(userid, forKey: "user_uid")
                UserDefaults.standard.synchronize()
            }
            let stb = UIStoryboard(name: "Main", bundle: nil)
            let controller = stb.instantiateViewController(withIdentifier: "tabBarID")
            self.present(controller, animated: true, completion: nil)
        }
        
    }
    
}

