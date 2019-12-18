//
//  ProfileTableViewController.swift
//  Clase10
//
//  Created by Alumno on 12/17/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Firebase

class ProfileTableViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    var ref : DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        getData()
    }
    
    func getData() {
        let userUid = UserDefaults.standard.object(forKey: "user_uid") as! String
        self.ref.child("users").child(userUid).observeSingleEvent(of: .value) { (snapshot) in
            let user = User(snapshot: snapshot)
            self.nameTextField.text = user.name
            self.lastnameTextField.text = user.lastname
            self.emailTextField.text = user.email
            if let age = user.age {
                self.ageTextField.text = "\(age)"
            }
            self.addressTextField.text = user.address
            self.phoneTextField.text = user.phone
        }
    }
    
    @IBAction func saveAction(_ sender: Any) {
        let uid = UserDefaults.standard.object(forKey: "user_uid") as! String
        let user = User(uid: uid,
                        name: self.nameTextField.text!,
                        lastname: self.lastnameTextField.text!,
                        email: self.emailTextField.text!,
                        age: Int(self.ageTextField.text!)!,
                        phone: self.phoneTextField.text!,
                        address: self.addressTextField.text!)
        self.ref.child("users").child(uid).updateChildValues(user.toAny() as! [AnyHashable : Any])
        AlertHelper.showAlert(title: "Alerta", message: "Tu usuario ha sido actualizado", vc: self)
    }
}
