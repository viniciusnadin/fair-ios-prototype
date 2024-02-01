//
//  RoadMapCardView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapCardView: View {
    var viewModel: RoadMapCardViewModel
    
    var body: some View {
        ZStack {
            Image(viewModel.cardImage)
                .resizable(resizingMode: .stretch)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(viewModel.cardTitle)
                    .font(.custom("Roboto-Bold", size: 25))
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Text(viewModel.cardSubTitle)
                    .font(.custom("Roboto-Light", size: 15))
                    .foregroundColor(.white)
                    .padding(.trailing, 100)
                
                Button(action: {
                    // Ação do botão
                }) {
                    Text("Join Now")
                        .font(.custom("Roboto-Light", size: 18))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        
                }
                .padding(.top, 10)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 10)
            .background(.black.opacity(0.4))
            .cornerRadius(10)
        }
    }
}

#Preview {
    RoadMapCardView(viewModel: RoadMapCardViewModel(cardImage: "sleep", cardTitle: "Bedtime & Wakeup", cardSubTitle: "Schedule the reminder to go to bed early and wake up calmly."))
}
