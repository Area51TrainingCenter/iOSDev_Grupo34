//
//  ViewController.swift
//  Clase8
//
//  Created by Alumno on 12/5/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var inButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inButton.layer.cornerRadius = 10
        inButton.backgroundColor = UIColor.red
        inButton.tintColor = UIColor.white
    }

    @IBAction func inAction(_ sender: Any) {
        guard let code = codeTextField.text, !code.isEmpty else {
            print("Ingresa codigo")
            return
        }
        if code == "Axb" {
            performSegue(withIdentifier: "loginSuccessSegue", sender: self)
        } else {
            print("Código incorrecto")
        }
        
    }
    
}

