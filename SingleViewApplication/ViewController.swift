// Ejercicio 1 - SingleViewApp
// Sergio García González

import UIKit
import MapKit

class ViewController: UIViewController {

// Variable que enlace nuestro componente del mapa con nuestro código
@IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Región inicial: España (vista general)
        let spainCenter = CLLocationCoordinate2D(latitude: 40.0, longitude: -4.0)
        let region = MKCoordinateRegion(center: spainCenter, latitudinalMeters: 1_200_000, longitudinalMeters: 1_200_000)
        mapView.setRegion(region, animated: false)
    }
    
    // Función para cambiar el tipo de mapa con el segmentelcontrol
    @IBAction func mapTypeChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: mapView.mapType = .standard
        case 1: mapView.mapType = .satellite
        case 2: mapView.mapType = .hybrid
        default: break
        }
    }
    
    // Función de los botones para seleccionar unas coordenadas
    @IBAction func showCity(_ sender: UIButton) {
        let coords: [Int: CLLocationCoordinate2D] = [
            1: CLLocationCoordinate2D(latitude: 40.9615, longitude: -5.6669), // Salamanca
            2: CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038), // Madrid
            3: CLLocationCoordinate2D(latitude: 40.960815, longitude: -5.670177)  // Facultad de Ciencias
        ]
        
        // Para haceer zoom en la región de coordenadas que hemos indicado
        if let c = coords[sender.tag] {
            let region = MKCoordinateRegion(center: c, latitudinalMeters: 500, longitudinalMeters: 500)
            mapView.setRegion(region, animated: true)
        }
    }
}


