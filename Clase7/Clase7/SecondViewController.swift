//
//  SecondViewController.swift
//  Clase7
//
//  Created by Alumno on 12/3/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //-12.102548,-77.0280847
        let location = CLLocationCoordinate2D(latitude: -12.102548, longitude: -77.0280847)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        UserDefaultsService.removeUsername()
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let controller = stb.instantiateViewController(withIdentifier: "loginVC")
        present(controller, animated: true, completion: nil)
    }
    
}
