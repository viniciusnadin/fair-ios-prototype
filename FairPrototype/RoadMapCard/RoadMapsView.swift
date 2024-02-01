//
//  RoadMapsView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapsView: View {
    
    private var categories: [String] = ["Popular RoadMaps", "Enrolled RoadMaps"]
    private var subCategories: [String] = ["Hotests", "Popular"]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("ProfileImage")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                Spacer()
            }
            .padding(.bottom, 5)
            
            Text("Vinicius")
                .font(.custom("Roboto-Light", size: 20))
                .foregroundStyle(.black.opacity(0.6))
                .padding(.bottom, 0)
            
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
