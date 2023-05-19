//
//      SplashScreenView.swift
//  UberApp
//
//  Created by Haneen on 28/10/1444 AH.
//

import SwiftUI

struct SplashScreenView: View {
    
    var body: some View {
     
//        NavigationView {
           
            
            VStack{
                VStack{
                    ZStack {
                        
                        Color(.black) .edgesIgnoringSafeArea(.all)
                        Image("Image")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        NavigationLink("next"){
                            GetStarted()
                        }
                    }}
                }
              
        }}
    

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
      SplashScreenView()
    }
}
