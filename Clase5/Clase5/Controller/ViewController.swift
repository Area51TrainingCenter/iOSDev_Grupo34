//
//  ViewController.swift
//  Clase5
//
//  Created by Alumno on 11/26/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var foodTableView: UITableView!
    
    var cells = [FoodCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodTableView.delegate = self
        foodTableView.dataSource = self
        cells.append(FoodCell(type: .left, food: Food(name: "Lomo saltado", image: "comida2")))
        cells.append(FoodCell(type: .right, food: Food(name: "Ají de gallina", image: "comida4")))
        cells.append(FoodCell(type: .right, food: Food(name: "Anticuchos", image: "comida3")))
        cells.append(FoodCell(type: .middle, food: Food(name: "Arroz con pollo", image: "comida1")))
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch self.cells[indexPath.row].type {
        case .left:
            let cell = foodTableView.dequeueReusableCell(withIdentifier: "leftCellId", for: indexPath) as! LeftTableViewCell
            cell.food = self.cells[indexPath.row].food
            return cell
        case .right:
            let cell = foodTableView.dequeueReusableCell(withIdentifier: "rightCellId", for: indexPath) as! RightTableViewCell
            cell.food = self.cells[indexPath.row].food
            return cell
        case .middle:
            let cell = foodTableView.dequeueReusableCell(withIdentifier: "middleCellId", for: indexPath) as! MiddleTableViewCell
            cell.food = self.cells[indexPath.row].food
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch self.cells[indexPath.row].type {
        case .left:
            return 80
        case .right:
            return 80
        case .middle:
            return 140
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cells.count
    }


}

