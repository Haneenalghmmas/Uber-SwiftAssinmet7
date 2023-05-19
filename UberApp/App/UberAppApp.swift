//
//  UberAppApp.swift
//  UberApp
//
//  Created by Haneen on 27/10/1444 AH.
//

import SwiftUI

@
struct UberAppApp: App {
  @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
    HomeView()
           .environmentObject(locationViewModel)
        
            
        }
    }
}
