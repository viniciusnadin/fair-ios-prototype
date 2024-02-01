//
//  RoadMapsView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapsView: View {
    
    private var categories: [String] = ["Popular RoadMaps", "Enrolled RoadMaps"]
    
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
