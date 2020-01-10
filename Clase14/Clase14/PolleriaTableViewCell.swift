//
//  PolleriaTableViewCell.swift
//  Clase14
//
//  Created by Alumno on 1/9/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit
import Kingfisher

class PolleriaTableViewCell: UITableViewCell {
    @IBOutlet weak var polleriaimage: UIImageView!
    
    @IBOutlet weak var polleriaNameLabl: UILabel!
    @IBOutlet weak var nrLocalesLabel: UILabel!
    
    var polleria : Polleria? {
        didSet {
            if let polleria = polleria {
                self.polleriaNameLabl.text = polleria.name
                if let url = polleria.url {
                    self.polleriaimage.kf.setImage(with: URL(string: url))
                }
                if let locales = polleria.locales {
                    self.nrLocalesLabel.text = "Tiene \(locales) locales"
                }
                
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
