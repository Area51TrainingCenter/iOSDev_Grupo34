//
//  AlertHelper.swift
//  Clase7
//
//  Created by Alumno on 12/3/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class AlertHelper {
    static func show(title: String, message: String, viewController: UIViewController, completionHandler: @escaping (Bool) -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (alert) in
            //Logica
            completionHandler(true)
        }
        alertController.addAction(action)
        viewController.present(alertController, animated: true, completion: nil)
    }
}
