//
//  LostVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/30/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit
import GoogleMaps

class LostVC: UIViewController ,GMSMapViewDelegate,CLLocationManagerDelegate{
    //MARK: - Outlets -
       @IBOutlet weak var mapView: GMSMapView!
       var locationManager = CLLocationManager()

    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        // Do any additional setup after loading the view.
    }
    //MARK:- Helpers -
    func initializaions(){
        mapView.isMyLocationEnabled = true
        mapView.delegate = self
        
        //Location Manager code to fetch current location
        self.locationManager.delegate = self
        self.locationManager.startUpdatingLocation()
        
    }
    
    func uiStyle(){
        self.navigationItem.title = "أنا تائه"
        contentView.borderRad(Radus: 10, borderWidth: 0)
        confirmButton.borderRad(Radus: 10, borderWidth: 0)
    }
    //MARK:- Map -
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        
        let camera = GMSCameraPosition.camera(withLatitude: (location?.coordinate.latitude)!, longitude:(location?.coordinate.longitude)!, zoom:7)
        mapView.animate(to: camera)
        
        //Finally stop updating location otherwise it will come again and again in this delegate
        self.locationManager.stopUpdatingLocation()
        
    }
    //MARK:- Buttons Actions
  
    @IBAction func confirmButtonDidClicked(_ sender: Any) {
    }
    
    
}
