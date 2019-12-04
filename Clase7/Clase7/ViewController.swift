//
//  ViewController.swift
//  Clase7
//
//  Created by Alumno on 12/3/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberSwitch: UISwitch!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        rememberSwitch.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let username = UserDefaultsService.getUsername() {
            //Existe username en UserDefaults
            //goToTabBar()
            self.usernameTextField.text = username
        }
    }
    
    func goToTabBar() {
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let controller = stb.instantiateViewController(withIdentifier: "tabBarId")
        present(controller, animated: true, completion: nil)
    }
    
    @objc func loginAction() {
        guard let username = usernameTextField.text, !username.isEmpty else {
            AlertHelper.show(title: "Ingrese su usuario", message: "Necesitas ingresar el usuario para poder loguearte", viewController: self) { (value) in
                //Qué hará cuando presione Ok
            }
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            AlertHelper.show(title: "Ingrese su contraseña", message: "Necesitas ingresar la contraseña para poder loguearte", viewController: self) { (value) in
                //Qué hará cuando presione Ok
            }
            return
        }
        if rememberSwitch.isOn {
            UserDefaultsService.save(username: username)
        }
        goToTabBar()
    }


}

