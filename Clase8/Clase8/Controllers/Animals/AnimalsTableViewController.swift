//
//  BreedTableViewController.swift
//  Clase8
//
//  Created by Alumno on 12/5/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class AnimalsTableViewController: UITableViewController {
    
    var cells = [Animal]()
    var animalSelected : Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dogBreeds = [
            Breed(image: "perro1", name: "Pug", description: "bla bla bla"),
            Breed(image: "perro2", name: "Pomerania", description: "bla bla bla2"),
            Breed(image: "perro3", name: "Shiba Inu", description: "bla bla bla2")
        ]
        cells.append(Animal(image: "perro1", name: "Perro", breeds: dogBreeds))
        let catBreeds = [
            Breed(image: "gato1", name: "Persa", description: "bla bla bla"),
            Breed(image: "gato2", name: "Bengala", description: "bla bla bla2"),
            Breed(image: "gato3", name: "Siamés", description: "bla bla bla2"),
            Breed(image: "gato4", name: "Sphynx", description: "bla bla bla2")
        ]
        cells.append(Animal(image: "gato2", name: "Gato", breeds: catBreeds))
        let parrotBreeds = [
            Breed(image: "loro1", name: "Amarillo", description: "bla bla bla"),
            Breed(image: "loro2", name: "Azul", description: "bla bla bla2"),
            Breed(image: "loro3", name: "Plomo", description: "bla bla bla2")
        ]
        cells.append(Animal(image: "loro1", name: "Loro", breeds: parrotBreeds))
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCellId", for: indexPath) as! AnimalTableViewCell
        cell.animal = self.cells[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 92
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.animalSelected = self.cells[indexPath.row]
        performSegue(withIdentifier: "breedSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "breedSegue" {
            let controller = segue.destination as! BreedTableViewController
            controller.animal = self.animalSelected
        }
    }
    
    
}
