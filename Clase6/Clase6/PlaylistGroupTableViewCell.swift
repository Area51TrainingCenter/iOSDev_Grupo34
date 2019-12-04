//
//  PlaylistGroupTableViewCell.swift
//  Clase6
//
//  Created by Alumno on 11/28/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class PlaylistGroupTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var playlistCollectionView: UICollectionView!
    
    var playlists : [Playlist]?
    
    var group : PlaylistGroup? {
        didSet {
            if let group = group {
                groupLabel.text = group.groupName
                playlists = group.playlists
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.playlistCollectionView.delegate = self
        self.playlistCollectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 112, height: 130)
        layout.minimumInteritemSpacing = 5.0
        self.playlistCollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playlistCellId", for: indexPath) as! PlaylistCollectionViewCell
        if let playlists = self.playlists {
            cell.playlist = playlists[indexPath.row]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = self.playlists?.count {
            return count
        }
        return 0
    }
    

}
