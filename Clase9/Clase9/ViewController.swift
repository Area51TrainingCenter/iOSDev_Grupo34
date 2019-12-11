//
//  ViewController.swift
//  Clase9
//
//  Created by Alumno on 12/10/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginAction(_ sender: Any) {
        guard let username = usernameTextField.text, !username.isEmpty else {
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        SVProgressHUD.setForegroundColor(UIColor.red)
        SVProgressHUD.setBackgroundColor(UIColor.white)
        SVProgressHUD.show()
        Auth.auth().signIn(withEmail: username, password: password) { (auth, error) in
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
            let stb = UIStoryboard(name: "Main", bundle: nil)
            let controller = stb.instantiateViewController(withIdentifier: "tabBarID")
            self.present(controller, animated: true, completion: nil)
        }
    }
    
}

