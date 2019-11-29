//
//  ViewController.swift
//  Clase6
//
//  Created by Alumno on 11/28/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    var cells = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        cells.append(Person(name: "Eduardo", lastname: "Hoyos"))
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 127)
        layout.minimumLineSpacing = 20.0
        layout.minimumInteritemSpacing = 5.0
        layout.scrollDirection = .vertical
        self.collectionView.collectionViewLayout = layout
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "personCellId", for: indexPath) as! PersonCollectionViewCell
        cell.person = self.cells[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.cells.count
    }


}

struct Person {
    let name: String
    let lastname: String
}

