//
//  LocationManeger.swift
//  UberApp
//
//  Created by Haneen on 27/10/1444 AH.
//

import CoreLocation

class LocationManger: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    
    override init() {
        super.init()
        //        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    }
    extension LocationManger: CLLocationManagerDelegate {
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations location:
        [CLLocation]) {
            guard !location.isEmpty else {return}
            
            locationManager.stopUpdatingLocation()
        }
        
    }
    

