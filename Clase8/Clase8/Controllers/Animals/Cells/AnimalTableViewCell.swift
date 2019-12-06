//
//  AnimalTableViewCell.swift
//  Clase8
//
//  Created by Alumno on 12/5/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var breedNumberLabel: UILabel!
    
    var animal : Animal? {
        didSet {
            if let animal = animal {
                animalImageView.image = UIImage(named: animal.image)
                animalNameLabel.text = animal.name
                breedNumberLabel.text = "Contiene \(animal.breeds.count) razas"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        animalImageView.layer.cornerRadius = 30
        animalImageView.clipsToBounds = true
        animalImageView.contentMode = .scaleAspectFill
    }
}
