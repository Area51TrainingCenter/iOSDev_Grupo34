//
//  UserListTableViewController.swift
//  Clase10
//
//  Created by Alumno on 12/17/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Firebase

class UserListTableViewController: UITableViewController {
    
    var users = [User]()
    var ref : DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        getData()
    }
    
    func getData() {
        self.ref.child("users").observe(.value) { (snapshot) in
            self.users = []
            for child in snapshot.children.allObjects as! [DataSnapshot] {
                let user = User(snapshot: child)
                self.users.append(user)
            }
            self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCellID", for: indexPath) as! UserTableViewCell
        cell.user = self.users[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.users.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
