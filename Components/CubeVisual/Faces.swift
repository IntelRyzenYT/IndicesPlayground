//
//  Faces.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

extension CubeVisualComponent { // MARK: Faces
    @ViewBuilder
    func topFace(offsetY: CGFloat, unit: CGFloat, size: CGFloat) -> some View {
        Path { path in
            let origin = CGPoint(x: size/2, y: offsetY)
            let dx = unit * CGFloat(length) * cos(.pi/6)
            let dy = unit * CGFloat(length) * sin(.pi/6)
            path.move(to: origin)
            path.addLine(to: CGPoint(x: origin.x + dx, y: origin.y - dy))
            path.addLine(to: CGPoint(x: origin.x, y: origin.y - 2 * dy))
            path.addLine(to: CGPoint(x: origin.x - dx, y: origin.y - dy))
            path.closeSubpath()
        }
        .fill(faceColor)
    }
    
    @ViewBuilder
    func leftFace(offsetY: CGFloat, unit: CGFloat, size: CGFloat) -> some View {
        Path { path in
            let origin = CGPoint(x: size/2, y: offsetY)
            let dx = unit * CGFloat(length) * cos(.pi/6)
            let dy = unit * CGFloat(length) * sin(.pi/6)
            path.move(to: origin)
            path.addLine(to: CGPoint(x: origin.x - dx, y: origin.y - dy))
            path.addLine(to: CGPoint(x: origin.x - dx, y: origin.y + unit * CGFloat(length) - dy))
            path.addLine(to: CGPoint(x: origin.x, y: origin.y + unit * CGFloat(length)))
            path.closeSubpath()
        }
        .fill(faceColor)
    }
    
    @ViewBuilder
    func rightFace(offsetY: CGFloat, unit: CGFloat, size: CGFloat) -> some View {
        Path { path in
            let origin = CGPoint(x: size/2, y: offsetY)
            let dx = unit * CGFloat(length) * cos(.pi/6)
            let dy = unit * CGFloat(length) * sin(.pi/6)
            path.move(to: origin)
            path.addLine(to: CGPoint(x: origin.x + dx, y: origin.y - dy))
            path.addLine(to: CGPoint(x: origin.x + dx, y: origin.y + unit * CGFloat(length) - dy))
            path.addLine(to: CGPoint(x: origin.x, y: origin.y + unit * CGFloat(length)))
            path.closeSubpath()
        }
        .fill(faceColor)
    }
}
