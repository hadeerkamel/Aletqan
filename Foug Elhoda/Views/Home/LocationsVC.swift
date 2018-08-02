//
//  LocationsVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/30/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit
import GoogleMaps

class LocationsVC: UIViewController {
    //MARK:- Outlets -
    
    @IBOutlet weak var mapView: GMSMapView!
    
    //MARK:- Properties -
    var locationsList = LocationsCoordinates()
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        // Do any additional setup after loading the view.
    }
    //MARK:- Helpers -
    func initializaions(){
        fillMap()
    }
    func fillMap(){
        mapView.camera = locationsList.camera
        for marker in locationsList.array {
            marker.map = mapView
        }
    }
    func uiStyle(){
        self.navigationItem.title = "مواقع الحمله"
    }

}
