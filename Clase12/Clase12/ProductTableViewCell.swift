//
//  ProductTableViewCell.swift
//  Clase12
//
//  Created by Alumno on 12/19/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Kingfisher

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    var product : Product? {
        didSet {
            if let product = product {
                productNameLabel.text = product.name
                descriptionLabel.text = product.description
                productImage.kf.setImage(with: URL(string: product.imageUrl))
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
