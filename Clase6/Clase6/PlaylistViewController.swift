//
//  PlaylistViewController.swift
//  Clase6
//
//  Created by Alumno on 11/28/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var playlistGroupTableView: UITableView!
    
    var cells = [PlaylistGroup]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playlistGroupTableView.delegate = self
        playlistGroupTableView.dataSource = self
        let playlist1 = Playlist(image: "image1", name: "Top 50 Peru", owner: "Spotify")
        let playlist2 = Playlist(image: "image2", name: "Top 100 Peru", owner: "Spotify")
        let playlist3 = Playlist(image: "image3", name: "Las pedidas", owner: "Spotify")
        let group1 = PlaylistGroup(groupName: "Playlist Perú", playlists: [playlist1, playlist2, playlist3, playlist1, playlist2, playlist3])
        let group2 = PlaylistGroup(groupName: "Playlist Otro país X", playlists: [playlist1, playlist2])
        self.cells.append(group1)
        self.cells.append(group2)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCellId", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cells.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 221
    }

}

struct PlaylistGroup {
    let groupName: String
    let playlists: [Playlist]
}

struct Playlist {
    let image : String
    let name : String
    let owner : String
}
