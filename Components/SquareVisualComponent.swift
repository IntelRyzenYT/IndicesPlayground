//
//  SquareVisualComponent.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

struct SquareVisualComponent: View {
    let size: Int
    
    var columns: [GridItem] {
        Array(repeating: GridItem(.flexible(), spacing: 1), count: size)
    }
    
    init(size: CGFloat) {
        self.size = Int(size)
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 1) {
            ForEach(0..<(size * size), id: \.self) { _ in
                Rectangle()
                    .foregroundStyle(.green)
                    .aspectRatio(1, contentMode: .fit)
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .background(Color.black.opacity(0.8))
        .border(Color.black.opacity(0.8))
    }
}

#Preview {
    @Previewable @State var value: Double = 1
    VStack(spacing: 40) {
        SliderLabel(range: 1...11, label: "Range", value: $value)
        SquareVisualComponent(size: CGFloat(value))
            .frame(width: 200)
    }
}
