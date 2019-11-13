//
//  ViewController.swift
//  Clase1
//
//  Created by Alumno on 11/12/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var dniTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Se ejecutó viewDidLoad")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Se ejecutó viewDidAppear")
    }
    
    @IBAction func clickAction(_ sender: UIButton) {
        welcomeLabel.text = "Label editado"
        print(dniTextField.text)
        if let dni = dniTextField.text {
            print("El DNI es \(dni)")
        }
        
        guard let password = passwordTextField.text else {
            print("No se pudo leer password")
            return
        }
        print(password)
        
    }
    

}

