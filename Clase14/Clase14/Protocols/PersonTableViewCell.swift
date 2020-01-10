//
//  PersonTableViewCell.swift
//  Clase14
//
//  Created by Alumno on 1/9/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit

class PersonTableViewCell : UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    
    var people : People? {
        didSet {
            if let people = people {
                nameLabel.text = people.name
                lastnameLabel.text = people.lastname
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
