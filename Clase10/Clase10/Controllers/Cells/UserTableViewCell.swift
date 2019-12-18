//
//  UserTableViewCell.swift
//  Clase10
//
//  Created by Alumno on 12/17/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var emailTextField: UILabel!
    
    var user : User? {
        didSet {
            if let user = user {
                nameTextField.text = user.name
                emailTextField.text = user.email
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
