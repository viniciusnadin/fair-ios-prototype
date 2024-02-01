//
//  RoadMapsView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapsView: View {
    @State private var currentPage = 0
    let viewModels = [
        RoadMapCardViewModel(
            cardImage: "sleep",
            cardTitle: "Bedtime & Wakeup",
            cardSubTitle: "Schedule the reminder to go to bed early and wake up calmly."),
        RoadMapCardViewModel(
            cardImage: "programming",
            cardTitle: "Computer Science",
            cardSubTitle: "Learn with Vinicius how to deliver high quality projects"),
    ]
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
            HStack {
                Text("Today's Road Maps")
                    .font(.custom("Roboto-Regular", size: 25))
                    .foregroundStyle(.black)
                Spacer()
                Text("See All")
                    .font(.custom("Roboto-Light", size: 14))
                    .foregroundStyle(Color.secondary)

            }.padding(.top, 10)
            
            Spacer().frame(maxHeight: 10)
            
            VStack(alignment: .leading) {
                RoadMapCardScrollView(cardViewModels: viewModels, currentPage: $currentPage)
                    .frame(height: 200)
                
                HStack {
                    Spacer()
                    PageControl(numberOfPages: viewModels.count, currentPage: $currentPage)
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
