//
//  PeopleTableViewCell.swift
//  Clase13
//
//  Created by Alumno on 1/7/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var peopleRealm : PeopleRealm? {
        didSet {
            if let people = peopleRealm {
                self.nameLabel.text = "\(people.name) \(people.lastname)"
                self.ageLabel.text = "\(people.age)"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
