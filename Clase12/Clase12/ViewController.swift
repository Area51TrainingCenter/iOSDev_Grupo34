//
//  ViewController.swift
//  Clase12
//
//  Created by Alumno on 12/19/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var productTableView: UITableView!
    
    var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.productTableView.delegate = self
        self.productTableView.dataSource = self
        getFirestoreData()
    }
    
    func getFirestoreData() {
        let db = Firestore.firestore()
        SVProgressHUD.show()
        db.collection("products").getDocuments { (querySnapshot, error) in
            SVProgressHUD.dismiss()
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            for document in querySnapshot!.documents {
                print(document.data())
                let dataDict = document.data()
                let product = Product(dictionary: dataDict)
                self.products.append(product)
            }
            self.productTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCellID", for: indexPath) as! ProductTableViewCell
        cell.product = self.products[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 179
    }


}

