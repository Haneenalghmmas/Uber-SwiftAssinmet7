//
//  LocationSearchView.swift
//  UberApp
//
//  Created by Haneen on 28/10/1444 AH.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var showLocationSearchView: Bool
    @EnvironmentObject var viewModel : LocationSearchViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    VStack{
                        Circle()
                            .fill(Color(.systemGray3))
                            .frame(width: 6 ,
                                   height: 6)
                        Rectangle()
                            .fill(Color(.systemGray3))
                            .frame(width:1 ,
                                   height: 24)
                        Rectangle()
                            .fill(.black)
                            .frame(width: 6 ,
                                   height: 6)
                    }
                    
                }
                NavigationLink("next"){
                    LocationSearchs()
                }
                VStack{
                    TextField("Current location" , text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    TextField("Where to ? " , text: $viewModel.querFragment)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                }
                .padding(.horizontal)
                .padding(.top, 64)
                
                Divider()
                    .padding(.vertical)
            }
            .padding(.horizontal)
            ScrollView{
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        ForEach( viewModel.results, id : \.self) {
                            result in
                            LocationSearchR(title: result.title, subtitle: result.subtitle)
                                .onTapGesture {
                                    //                                viewModel.selectedLocation(result)
                                    showLocationSearchView.toggle()
                                    
                                }
                            
                        }
                    }
                }
            }
            .background(.white)
        }
        
    }}
    


struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView(showLocationSearchView: .constant(false))
    }
}
