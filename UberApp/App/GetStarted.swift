//
//  GetStarted.swift
//  UberApp
//
//  Created by Haneen on 28/10/1444 AH.
//

import SwiftUI

struct GetStarted: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Color") .edgesIgnoringSafeArea(.all)
                Spacer()
                
                Image("Image 1")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                VStack{
                    
                    NavigationLink("Get started"){
                        
                    }
                    .foregroundColor(.white)
                    
                }
                .background(RoundedRectangle(cornerRadius: 10 , style: .continuous))
                .padding(.top , 550)
                .bold()
                .frame( maxWidth: 200 , maxHeight: 200)
                
                .foregroundColor(Color.black)
            }}}
}

struct GetStarted_Previews: PreviewProvider {
    static var previews: some View {
        GetStarted()
    }
}
