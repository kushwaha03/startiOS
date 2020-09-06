//
//  mapViewController.swift
//  Vipul
//
//  Created by karmaa lab on 11/04/19.
//  Copyright © 2019 kLab. All rights reserved.
//

import UIKit

import GoogleMaps


class mapViewController: UIViewController, CLLocationManagerDelegate{
  
//    private let locationManager = CLLocationManager()
    @IBOutlet weak var mapView: GMSMapView!
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let camera = GMSCameraPosition.camera(withLatitude: 1.285, longitude: 103.848, zoom: 12)
//        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
//        self.view = mapView
      
        
        //its working
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
        
//        let camera = GMSCameraPosition.cameraWithLatitude((location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!, zoom: 17.0)
        let cam = GMSCameraPosition.camera(withLatitude: 12.96099865, longitude: 77.64859225928183, zoom: 15)
        let mapView = GMSMapView.map(withFrame: .zero, camera: cam)
        self.view = mapView
        self.mapView?.isMyLocationEnabled = true
        
        //Location Manager code to fetch current location
        self.locationManager.delegate = self
        self.locationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        
//      let cam = GMSCameraPosition.camera(withLatitude: 12.96099865, longitude: 77.64859225928183, zoom: 15)
        let camera = GMSCameraPosition.camera(withLatitude: (location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!, zoom: 17.0)
        self.mapView?.animate(to: camera)
        
        //Finally stop updating location otherwise it will come again and again in this delegate
        self.locationManager.stopUpdatingLocation()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
