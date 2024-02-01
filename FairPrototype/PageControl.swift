//
//  PageControl.swift
//  FairPrototype
//
//  Created by Vinicius Nadin on 31/01/24.
//

import SwiftUI

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<numberOfPages, id: \.self) { page in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(page == currentPage ? .black : .gray)
            }
        }
    }
}

#Preview {
    PageControl(numberOfPages: 10, currentPage: Binding.constant(1))
}
