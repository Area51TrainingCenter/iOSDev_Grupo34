//
//  ViewController.swift
//  Clase4
//
//  Created by Alumno on 11/21/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.becomeFirstResponder()
        
        loginButton.layer.cornerRadius = 10
    }
    @IBAction func action(_ sender: Any) {
        print("Action")
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
//        let button = sender as! UIButton
//        button.isEnabled = true
        sender.isEnabled = false
        print("Presioné")
        guard let username = usernameTextField.text else {
            print("No se pudo obtener username")
            return
        }
        guard let password = passwordTextField.text else {
            print("No se pudo obtener password")
            return
        }
//        if let username1 = usernameTextField.text {
//            print(username1)
//        }
        //comenzaría el activity view
        if username == password {
            //Ir a otra vista
            print("Ir a otra vista")
            //tabBarContr
            //Instanciando al Storyboard
            let stb = UIStoryboard(name: "Main", bundle: nil)
            //Instanciando al controlador al que quiero ir
            let contr = stb.instantiateViewController(withIdentifier: "tabBarContr")
            //terminaría el activity view
            //Presentándolo
            present(contr, animated: true, completion: nil)
        } else {
            print("Credenciales erróneas")
        }
        
        sender.isEnabled = true
    }
    
}

