//
//  PlaylistCollectionViewCell.swift
//  Clase6
//
//  Created by Alumno on 11/28/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class PlaylistCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var playlistImage: UIImageView!
    @IBOutlet weak var playlistName: UILabel!
    @IBOutlet weak var playlistOwnerLabel: UILabel!
    
    var playlist : Playlist? {
        didSet {
            if let playlist = playlist {
                playlistImage.image = UIImage(named: playlist.image)
                playlistName.text = playlist.name
                playlistOwnerLabel.text = playlist.owner
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
