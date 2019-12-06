//
//  SecondViewController.swift
//  Clase7
//
//  Created by Alumno on 12/3/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //-12.102548,-77.0280847
        let location = CLLocationCoordinate2D(latitude: -12.102548, longitude: -77.0280847)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Area51"
        annotation.subtitle = "Lima"
        
        mapView.addAnnotation(annotation)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation.title == "Area51" {
            let ann =  MKAnnotationView()
            ann.image = UIImage(named: "image1")
            return ann
        }
        return nil
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        UserDefaultsService.removeUsername()
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let controller = stb.instantiateViewController(withIdentifier: "loginVC")
        present(controller, animated: true, completion: nil)
    }
    
}
