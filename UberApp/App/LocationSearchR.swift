//
//  LocationSearchR.swift
//  UberApp
//
//  Created by Haneen on 28/10/1444 AH.
//

import SwiftUI

struct LocationSearchR: View {
    let title : String
    let subtitle : String
    var body: some View {
        HStack{
            Image(systemName: "mapping.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40 , height: 40)
            VStack(alignment: .leading , spacing: 4){
                Text(title)
                    .font(.body)
                Text(subtitle)
                    .font(.system(size:15))
                    .foregroundColor(.gray)
                Divider()
                
                       
                
            }
            .padding(.leading , 8)
            .padding(.vertical)

        }
        .padding(.leading)
    }
}

struct LocationSearchR_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchR(title: "starbucks", subtitle: "123 main street")
    }
}
