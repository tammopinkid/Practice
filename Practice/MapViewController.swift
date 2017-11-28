//
//  MapViewController.swift
//  Practice
//
//  Created by Kamonwat Rojjanadechakul on 11/28/2560 BE.
//  Copyright © 2560 Benjarat Saeang. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    func addPinToMap(latitude: CLLocationDegrees, longitude: CLLocationDegrees, title: String, subtitle: String) {
        let location = CLLocationCoordinate2DMake(latitude, longitude)
        let annotation = MapMarker(coordinate: location, title: title, subtitle: subtitle)
        
        mapView.addAnnotation(annotation)
        setCenterOfMapToLocation(location: location)
    }
    
    func setCenterOfMapToLocation(location: CLLocationCoordinate2D) {
        let coordinate = CLLocationCoordinate2DMake(location.latitude, location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPinToMap(latitude: 13.7957216, longitude: 100.3256947, title: "EGCO Department", subtitle: "Phuthamonthon, Salaya")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
