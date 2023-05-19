//
//  LocationSearchViewModel.swift
//  UberApp
//
//  Created by Haneen on 28/10/1444 AH.
//

import Foundation
import MapKit
class LocationSearchViewModel: NSObject , ObservableObject{
    
    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation : String?
    private let searchCompleter = MKLocalSearchCompleter()
    var querFragment: String = "" {
        didSet {
            print("DEBUG : Query fragment is \(querFragment)")
        }
    }
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = querFragment
    }
    func selectedLocation(_ location: MKLocalSearchCompleter){
        
}
    func locationSearch(forLocalSearchCompletion localSearch: MKLocalSearchCompletion, completion: @escaping MKLocalSearch.CompletionHandler){
        
    }
}

    extension LocationSearchViewModel: MKLocalSearchCompleterDelegate{
        func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
            self.results = completer.results
        }
    }
    
