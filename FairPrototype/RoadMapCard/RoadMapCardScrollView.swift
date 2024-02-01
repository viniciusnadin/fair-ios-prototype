//
//  RoadMapCardScrollView.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct RoadMapCardViewModel {
    var cardImage: String
    var cardTitle: String
    var cardSubTitle: String
}

struct RoadMapCardScrollView: View {
    var cardViewModels: [RoadMapCardViewModel]
    @Binding var currentPage: Int
    @GestureState private var translation: CGFloat = 0
    @State private var offset: CGFloat = 0
    @State private var cardSpacing: CGFloat = 10
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: cardSpacing) {
                ForEach(cardViewModels.indices, id: \.self) { index in
                    RoadMapCardView(viewModel: cardViewModels[index])
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
                        } else if -dragAmount > threshold, currentPage < cardViewModels.count - 1 {
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
    RoadMapCardScrollView(cardViewModels: [RoadMapCardViewModel(cardImage: "sleep", cardTitle: "Bedtime & Wakeup", cardSubTitle: "Schedule the reminder to go to bed early and wake up calmly.")], currentPage: Binding.constant(1))
}
