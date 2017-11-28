//
//  MapMarker.swift
//  Practice
//
//  Created by Kamonwat Rojjanadechakul on 11/28/2560 BE.
//  Copyright © 2560 Benjarat Saeang. All rights reserved.
//

import UIKit
import MapKit

class MapMarker: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        super.init()
    }
}
