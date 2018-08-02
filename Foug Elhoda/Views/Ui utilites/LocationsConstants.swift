//
//  LocationsConstants.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/2/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation
import GoogleMaps
class LocationsCoordinates
{
    var array : [GMSMarker] = []
    var camera = GMSCameraPosition ()
}

   func getHamlaLocations() -> LocationsCoordinates{
    
     let hamlaLocations = LocationsCoordinates()
        hamlaLocations.camera = GMSCameraPosition.camera(withLatitude:  21.334901809692383, longitude: 39.97191619873047, zoom: 11)
    
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 21.39809226989746, longitude: 39.90345764160156)
        marker1.title = "منى مخفض"
        hamlaLocations.array.append(marker1)
    
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 21.334901809692383, longitude: 39.97191619873047)
        marker2.title = " عرفه مخفض"
        hamlaLocations.array.append(marker2)
    
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 21.347896575927734, longitude: 39.962196350097656)
        marker3.title = "عرفه العام"
        hamlaLocations.array.append(marker3)
    
    return hamlaLocations
    }

func getGatheringLocations() -> LocationsCoordinates{
    
    let gatheringLocations = LocationsCoordinates()
    gatheringLocations.camera = GMSCameraPosition.camera(withLatitude:  26.184572219848633, longitude: 41.677913665771484, zoom: 4.5)
    
    let marker1 = GMSMarker()
    marker1.position = CLLocationCoordinate2D(latitude: 24.535551071166992, longitude: 46.65184783935547)
    marker1.title = "نقطه تجمع الرياض"
    gatheringLocations.array.append(marker1)
    
    let marker2 = GMSMarker()
    marker2.position = CLLocationCoordinate2D(latitude: 28.44907569885254, longitude: 36.607765197753906)
    marker2.title = "نقطه تجمع تبوك"
    gatheringLocations.array.append(marker2)
    
    let marker3 = GMSMarker()
    marker3.position = CLLocationCoordinate2D(latitude: 26.184572219848633, longitude: 50.15861892700195)
    marker3.title = "نقطه تجمع الخبر"
    gatheringLocations.array.append(marker3)
    
    let marker4 = GMSMarker()
    marker4.position = CLLocationCoordinate2D(latitude: 27.556856155395508, longitude: 41.677913665771484)
    marker4.title = "نقطه تجمع حائل"
    gatheringLocations.array.append(marker4)
    
    return gatheringLocations
}

