//
//  PeopleViewController.swift
//  Clase13
//
//  Created by Alumno on 1/7/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit
import RealmSwift

class PeopleViewController: UIViewController {
    
    @IBOutlet weak var peopleTableView: UITableView!
    
    let realm = try! Realm()
    lazy var people : Results<PeopleRealm> = {
        self.realm.objects(PeopleRealm.self).sorted(byKeyPath: "age", ascending: false)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.peopleTableView.tableFooterView = UIView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Se muestra")
        self.peopleTableView.reloadData()
    }
}

extension PeopleViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCellID", for: indexPath) as! PeopleTableViewCell
        cell.peopleRealm = self.people[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 102
    }
    
    
}
