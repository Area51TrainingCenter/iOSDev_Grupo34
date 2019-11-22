//
//  TestTableViewController.swift
//  Clase4
//
//  Created by Alumno on 11/21/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {

    var animals = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animals.append(Animal(name: "Michi", image: "gato1"))
        animals.append(Animal(name: "Gatito", image: "gato2"))
        animals.append(Animal(name: "Otro gato", image: "gato3"))
        animals.append(Animal(name: "Gatos", image: "gato4"))
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCellId", for: indexPath) as! AnimalTableViewCell
        cell.animalImageView.image = UIImage(named: self.animals[indexPath.row].image)
        cell.animalNameLabel.text = self.animals[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }

}
