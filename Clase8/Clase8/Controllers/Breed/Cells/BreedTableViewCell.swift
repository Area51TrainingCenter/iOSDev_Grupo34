//
//  BreedTableViewCell.swift
//  Clase8
//
//  Created by Alumno on 12/5/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class BreedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var breedImageView: UIImageView!
    @IBOutlet weak var breedNameLabel: UILabel!
    
    var breed : Breed? {
        didSet {
            if let breed = breed {
                breedImageView.image = UIImage(named: breed.image)
                breedNameLabel.text = breed.name
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        breedImageView.layer.cornerRadius = 30
        breedImageView.clipsToBounds = true
        breedImageView.contentMode = .scaleAspectFill
    }
}
