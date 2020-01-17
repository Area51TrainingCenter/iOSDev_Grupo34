//
//  ViewController.swift
//  Clase16
//
//  Created by Alumno on 1/16/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelInfo: UILabel!
    @IBOutlet weak var viewcontainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewcontainer.layer.cornerRadius = 50
        
        for family: String in UIFont.familyNames
        {
            print(family)
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                print("== \(names)")
            }
        }
        labelInfo.font = UIFont(name: "GreatWishes", size: 30)
    }

    @IBAction func call(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "message://")!, options: [:], completionHandler: nil)
        UIApplication.shared.open(URL(string: "tel://998084772")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func whatsacAction(_ sender: Any) {
        UIApplication.shared.open(URL(string: "whatsapp://998084772")!, options: [:], completionHandler: nil)
    }
}

