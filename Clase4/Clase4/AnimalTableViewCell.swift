//
//  AnimalTableViewCell.swift
//  Clase4
//
//  Created by Alumno on 11/21/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        animalImageView.layer.cornerRadius = 30
    }

}
