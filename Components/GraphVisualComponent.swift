//
//  GraphVisualComponent.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import Charts
import SwiftUI

struct PointData: Identifiable {
    var id = UUID()
    let x: Double
    let y: Double
}



struct GraphVisualComponent: View {
    let exp: Int
    let data: [PointData]
    
    init(exp: Int) {
        self.exp = exp
        data = stride(from: -10.0, to: 10.5, by: 0.5).map { x in
            return PointData(x: x, y: pow(x, Double(exp)))
        }
    }
    var body: some View {
        Chart(data) { point in
            LineMark(
                x: .value("X Axis", point.x),
                y: .value("Y Axis", point.y)
            )
            .foregroundStyle(.green)
            .lineStyle(StrokeStyle(lineWidth: 6, lineCap: .round))
        }
        
    }
}

#Preview {
    ZStack {
        GraphVisualComponent(exp: 3)
            .frame(width: 200, height: 200)
            .roundedUltraThinBackground()
    }
}
