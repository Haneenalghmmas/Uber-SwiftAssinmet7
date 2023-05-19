//
//  HomeView.swift
//  UberApp
//
//  Created by Haneen on 27/10/1444 AH.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false

    var body: some View {
        ZStack(alignment: .top){
            UberMapUberMapViewRepresentable()
                .ignoresSafeArea()
            if showLocationSearchView{
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            }else{
                LocationSearchs()
                    .padding(.top,72)
                    .onTapGesture {
                        withAnimation(.spring()){
                             showLocationSearchView.toggle()
                         }
                        
                    }}
            MapViewbutton(showLocationSearchView: $showLocationSearchView)                     .padding(.leading)
                .padding(.top, 4)
        
            
        }
        
        
    }}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
