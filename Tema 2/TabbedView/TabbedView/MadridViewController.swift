// Tabbed View (introducción a XCODE)
// Sergio García González
// MadridViewController.swift
import UIKit
import MapKit

class MadridViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
            super.viewDidLoad()
            let coord = CLLocationCoordinate2D(latitude: 40.41694, longitude: -3.70333)
            let region = MKCoordinateRegion(center: coord, latitudinalMeters: 30000, longitudinalMeters: 30000)
            mapView.setRegion(region, animated: false)

            let pin = MKPointAnnotation()
            pin.coordinate = coord
            pin.title = "Madrid"
            mapView.addAnnotation(pin)
    }
}
