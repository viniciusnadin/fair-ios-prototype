//
//  RoadMapsView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapsView: View {
    
    private var categories: [String] = ["Popular RoadMaps", "Enrolled RoadMaps"]
    private var subCategories: [String] = ["Hotests", "Popular", "New", "Recomended", "Top", "Favorites" ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Image("ProfileImage")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                        Spacer()
                        Image(systemName: "bell")
                            .resizable()
                            .foregroundStyle(.black)
                            .frame(width: 24, height: 24)
                            .padding()
                    }
                    .padding(.bottom, 5)
                    
                    Text("Vinicius")
                        .font(.custom("Roboto-Light", size: 20))
                        .foregroundStyle(.black.opacity(0.6))
                        .padding(.bottom, 10)
                }
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(subCategories, id: \.self) { subCategorie in
                        Text(subCategorie)
                            .foregroundStyle(.white)
                            .padding(10)
                            .background(.black.opacity(0.8))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }.scrollIndicators(.hidden)
            
            ForEach(categories, id: \.self) { categorie in
                CategoryRoadMapView(categoryTitle: categorie)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    RoadMapsView()
}
