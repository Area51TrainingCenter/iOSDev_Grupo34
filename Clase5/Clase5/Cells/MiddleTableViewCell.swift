//
//  MiddleTableViewCell.swift
//  Clase5
//
//  Created by Alumno on 11/26/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class MiddleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var middleImageView: UIImageView!
    
    var food : Food? {
        didSet {
            if let food = food {
                middleNameLabel.text = food.name
                middleImageView.image = UIImage(named: food.image)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        middleImageView.layer.cornerRadius = 30
    }
}
