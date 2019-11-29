//
//  PersonCollectionViewCell.swift
//  Clase6
//
//  Created by Alumno on 11/28/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class PersonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    
    var person: Person? {
        didSet {
            if let person = person {
                nameLabel.text = person.name
                lastnameLabel.text = person.lastname
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.borderWidth = 1
        self.contentView.layer.borderColor = UIColor.blue.cgColor
    }
    
}
