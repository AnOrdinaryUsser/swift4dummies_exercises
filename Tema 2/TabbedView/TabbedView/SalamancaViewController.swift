// Tabbed View (introducción a XCODE)
// Sergio García González
// SalamancaViewController.swift

import UIKit
import MapKit

class SalamancaViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            let coord = CLLocationCoordinate2D(latitude: 40.967, longitude: -5.667)
            let region = MKCoordinateRegion(center: coord, latitudinalMeters: 30000, longitudinalMeters: 30000)
            mapView.setRegion(region, animated: false)

            //let pin = MKPointAnnotation()
            //pin.coordinate = coord
            //pin.title = "Salamanca"
            //mapView.addAnnotation(pin)
        }
}
