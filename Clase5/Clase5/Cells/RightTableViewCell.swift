//
//  RightTableViewCell.swift
//  Clase5
//
//  Created by Alumno on 11/26/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class RightTableViewCell: UITableViewCell {

    @IBOutlet weak var rightNameLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    var food : Food? {
        didSet {
            if let food = food {
                rightNameLabel.text = food.name
                rightImageView.image = UIImage(named: food.image)
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        rightImageView.layer.cornerRadius = 30
    }


}
