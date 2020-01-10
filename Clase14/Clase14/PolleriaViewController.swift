//
//  PolleriaViewController.swift
//  Clase14
//
//  Created by Alumno on 1/9/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit

class PolleriaViewController : UITableViewController {
    
    var pollerias : [Polleria]?
    //var pollerias = [Polleria]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Llamar al servicio
        Polleria.get { (polleriaResult) in
            self.pollerias = polleriaResult
            self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "polleriaCellID", for: indexPath) as! PolleriaTableViewCell
        if let polleria = self.pollerias?[indexPath.row] {
            cell.polleria = polleria
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = pollerias?.count {
            return count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
