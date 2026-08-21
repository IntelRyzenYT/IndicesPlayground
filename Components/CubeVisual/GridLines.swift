//
//  GridLines.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

extension CubeVisualComponent { // MARK: GridLines
    @ViewBuilder
    func topGridLines(offsetY: CGFloat, unit: CGFloat, size: CGFloat) -> some View {
        ForEach(0...length, id: \.self) { i in
            let origin = CGPoint(x: size/2, y: offsetY)
            let dx = unit * CGFloat(length) * cos(.pi/6)
            let dy = unit * CGFloat(length) * sin(.pi/6)
            let stepDx = dx / CGFloat(length)
            let stepDy = dy / CGFloat(length)
        
            Path { path in
                let start = CGPoint(
                    x: origin.x - CGFloat(i) * stepDx,
                    y: origin.y - CGFloat(i) * stepDy
                )
                let end = CGPoint(
                    x: start.x + dx,
                    y: start.y - dy
                )
                path.move(to: start)
                path.addLine(to: end)
            }.stroke(gridLine, lineWidth: 1.5)

            Path { path in
                let start = CGPoint(
                    x: origin.x + CGFloat(i) * stepDx,
                    y: origin.y - CGFloat(i) * stepDy
                )
                let end = CGPoint(
                    x: start.x - dx,
                    y: start.y - dy
                )
                path.move(to: start)
                path.addLine(to: end)
            }.stroke(gridLine, lineWidth: 1.5)
        }
    }
    
    @ViewBuilder
    func leftGridLines(offsetY: CGFloat, unit: CGFloat, size: CGFloat) -> some View {
        
        ForEach(0...length, id: \.self) { i in
            let origin = CGPoint(x: size/2, y: offsetY)
            let dx = unit * CGFloat(length) * cos(.pi/6)
            let dy = unit * CGFloat(length) * sin(.pi/6)
            
            Path { path in
                let start = CGPoint(
                    x: origin.x - dx,
                    y: origin.y - dy + CGFloat(i) * unit
                )
                let end = CGPoint(
                    x: origin.x,
                    y: origin.y + CGFloat(i) * unit
                )
                path.move(to: start)
                path.addLine(to: end)
            }.stroke(gridLine, lineWidth: 1.5)

            Path { path in
                let start = CGPoint(
                    x: origin.x - dx + CGFloat(i) * dx / CGFloat(length),
                    y: origin.y - dy + CGFloat(i) * dy / CGFloat(length)
                )
                let end = CGPoint(
                    x: origin.x - dx + CGFloat(i) * dx / CGFloat(length),
                    y: origin.y - dy + CGFloat(i) * dy / CGFloat(length) + unit * CGFloat(length)
                )
                path.move(to: start)
                path.addLine(to: end)
            }.stroke(gridLine, lineWidth: 1.5)
        }
    }
    
    @ViewBuilder
    func rightGridLines(offsetY: CGFloat, unit: CGFloat, size: CGFloat) -> some View {
        ForEach(0...length, id: \.self) { i in
            let origin = CGPoint(x: size/2, y: offsetY)
            let dx = unit * CGFloat(length) * cos(.pi/6)
            let dy = unit * CGFloat(length) * sin(.pi/6)
            
            Path { path in
                let start = CGPoint(
                    x: origin.x + dx,
                    y: origin.y - dy + CGFloat(i) * unit
                )
                let end = CGPoint(
                    x: origin.x,
                    y: origin.y + CGFloat(i) * unit
                )
                path.move(to: start)
                path.addLine(to: end)
            }.stroke(gridLine, lineWidth: 1.5)

            Path { path in
                let start = CGPoint(
                    x: origin.x + dx - CGFloat(i) * dx / CGFloat(length),
                    y: origin.y - dy + CGFloat(i) * dy / CGFloat(length)
                )
                let end = CGPoint(
                    x: origin.x + dx - CGFloat(i) * dx / CGFloat(length),
                    y: origin.y - dy + CGFloat(i) * dy / CGFloat(length) + unit * CGFloat(length)
                )
                path.move(to: start)
                path.addLine(to: end)
            }.stroke(gridLine, lineWidth: 1.5)
        }
    }
    
    @ViewBuilder
    func outerBorder(offsetY: CGFloat, unit: CGFloat, size: CGFloat) -> some View {
        Path { path in
            let origin = CGPoint(x: size/2, y: offsetY)
            let dx = unit * CGFloat(length) * cos(.pi/6)
            let dy = unit * CGFloat(length) * sin(.pi/6)
            let L = unit * CGFloat(length)
            
            path.move(to: CGPoint(x: origin.x, y: origin.y - 2 * dy)) // Top
            path.addLine(to: CGPoint(x: origin.x + dx, y: origin.y - dy)) // Top Right
            path.addLine(to: CGPoint(x: origin.x + dx, y: origin.y - dy + L)) // Bottom Right
            path.addLine(to: CGPoint(x: origin.x, y: origin.y + L)) // Bottom
            path.addLine(to: CGPoint(x: origin.x - dx, y: origin.y - dy + L)) // Bottom Left
            path.addLine(to: CGPoint(x: origin.x - dx, y: origin.y - dy)) // Top Left
            path.closeSubpath()
        }
        .stroke(Color.black, style: StrokeStyle(lineWidth: 2.5, lineJoin: .round))
    }
}
