//
//  LeftTableViewCell.swift
//  Clase5
//
//  Created by Alumno on 11/26/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class LeftTableViewCell: UITableViewCell {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftNameLabel: UILabel!
    
    var food : Food? {
        didSet {
            if let food = food {
                leftNameLabel.text = food.name
                leftImageView.image = UIImage(named: food.image)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        leftImageView.layer.cornerRadius = 30
    }


}
