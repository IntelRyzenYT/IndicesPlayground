//
//  CubeVisualComponent.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

struct CubeVisualComponent: View {
    let length: Int
    
    let faceColor = Color.green
    let gridLine = Color.black

    var body: some View {
        GeometryReader { geo in
            let size = min(geo.size.width, geo.size.height)
            let unit = size / CGFloat(length + length)
            let offsetY: CGFloat = unit * CGFloat(length) / 2

            ZStack {
                //faces
                topFace(offsetY: offsetY, unit: unit, size: size)

                leftFace(offsetY: offsetY, unit: unit, size: size)

                rightFace(offsetY: offsetY, unit: unit, size: size)
                
                //grid lines
                topGridLines(offsetY: offsetY, unit: unit, size: size)
                
                leftGridLines(offsetY: offsetY, unit: unit, size: size)
                
                rightGridLines(offsetY: offsetY, unit: unit, size: size)
                
                //outer border
                outerBorder(offsetY: offsetY, unit: unit, size: size)
                
            }
            .frame(width: size, height: size)
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

#Preview("Cube Visual Component") {
    @Previewable @State var length: Double = 0
    VStack {
        SliderLabel(range: 1...6, label: "Base:", value: $length)
        Spacer()
        CubeVisualComponent(length: Int(length))
            .frame(width: 300, height: 300)
    }
}
