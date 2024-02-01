//
//  RoadMapsView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapsView: View {
    @State private var currentPage = 0
    let cardData = ["sleep", "programming", "sleep", "sleep"]
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
            Text("Today's Road Maps")
                .font(.custom("Roboto-Regular", size: 25))
                .foregroundStyle(.black)
            
            Spacer().frame(maxHeight: 10)
            
            VStack(alignment: .leading) {
                RoadMapCardScrollView(cardData: cardData, currentPage: $currentPage)
                    .frame(height: 160)
                
                HStack {
                    Spacer()
                    PageControl(numberOfPages: cardData.count, currentPage: $currentPage)
                        .padding(.top, 10)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    RoadMapsView()
}
