//
//  RoadMapCardScrollView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapCardScrollView: View {
    var cardData: [String]
    @Binding var currentPage: Int
    @GestureState private var translation: CGFloat = 0
    @State private var offset: CGFloat = 0
    @State private var cardSpacing: CGFloat = 10
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: cardSpacing) {
                ForEach(cardData.indices, id: \.self) { index in
                    RoadMapCardView(imageName: cardData[index])
                        .frame(width: geometry.size.width, height: 160)
                }
            }
            .offset(x: offset)
            .gesture(
                DragGesture()
                    .updating($translation) { value, state, _ in
                        state = value.translation.width
                    }
                    .onEnded { value in
                        let cardWidth = geometry.size.width + cardSpacing
                        let threshold: CGFloat = 50
                        let dragAmount = value.translation.width
                        
                        if dragAmount > threshold, currentPage > 0 {
                            currentPage -= 1
                        } else if -dragAmount > threshold, currentPage < cardData.count - 1 {
                            currentPage += 1
                        }
                        
                        withAnimation {
                            offset = -CGFloat(currentPage) * cardWidth
                        }
                    }
            )
        }
    }
}

#Preview {
    RoadMapCardScrollView(cardData: ["Card 1", "Card 2"], currentPage: Binding.constant(1))
}
