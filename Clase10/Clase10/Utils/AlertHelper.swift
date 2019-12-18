//
//  AlertHelper.swift
//  Clase10
//
//  Created by Alumno on 12/17/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class AlertHelper {
    static func showAlert(title: String, message: String, vc: UIViewController) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (actionCompl) in
            //
        }
        alertController.addAction(action)
        vc.present(alertController, animated: true, completion: nil)
    }
}
