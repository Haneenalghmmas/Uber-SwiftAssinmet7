//
//  MapViewbutton.swift
//  UberApp
//
//  Created by Haneen on 28/10/1444 AH.
//

import SwiftUI

struct MapViewbutton: View {
    
    @Binding var showLocationSearchView: Bool

    var body: some View {
        Button {
            withAnimation(.spring()){
                 showLocationSearchView.toggle()
             }
        }label:{
            Image(systemName:showLocationSearchView ? "arrow.left":" line.3.horizontal" )
                .font(.title)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity , alignment: .leading)
    }
}
struct MapViewbutton_Previews: PreviewProvider {
    static var previews: some View {
        
        MapViewbutton(showLocationSearchView: .constant(true))
    }
}
