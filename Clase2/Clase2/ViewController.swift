//
//  ViewController.swift
//  Clase2
//
//  Created by Alumno on 11/14/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func showViewControllerAction(_ sender: Any) {
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let controller = stb.instantiateViewController(withIdentifier: "purpleVC")
//        let navC = UINavigationController(rootViewController: controller)
//        present(navC, animated: true, completion: nil)
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
    


}

