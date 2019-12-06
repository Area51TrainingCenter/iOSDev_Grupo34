//
//  BreedTableViewController.swift
//  Clase8
//
//  Created by Alumno on 12/5/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class BreedTableViewController : UITableViewController {
    
    var breeds : [Breed]?
    var animal: Animal? {
        didSet {
            if let animal = animal {
                self.title = animal.name
                self.breeds = animal.breeds
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "breedCellId", for: indexPath) as! BreedTableViewCell
        if let breeds = self.breeds {
            cell.breed = breeds[indexPath.row]
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = self.breeds?.count {
            return count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 92
    }
}
