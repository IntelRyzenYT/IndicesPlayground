//
//  NegativeVisualisationComponents.swift
//  IndicesPlayground
//
//  Created by OneLeaf on 24/08/26.
//

import SwiftUI

extension NegativeVisualisationView {
    
    // Top Area: Number line for exponents (16, 8, 4, 2, 1, 1/2, 1/4, 1/8)
    var topNumberLineSection: some View {
        VStack(spacing: 16) {
            Text("Exponent Visualisation")
                .font(.headline)
            
            HStack(spacing: 16) {
                ForEach(["16", "8", "4", "2", "1", "1/2", "1/4", "1/8"], id: \.self) { value in
                    VStack(spacing: 8) {
                        Text(value)
                            .font(.subheadline)
                            .bold()
                        Circle()
                            .fill(Color.accentColor)
                            .frame(width: 8, height: 8)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }
        .padding()
        .roundedUltraThinBackground()
        .frame(maxHeight: 400)
    }
    
    // Bottom-Left Area: Controls for base and exponent adjustment
    func bottomControlsSection(base: Binding<Int>, exponent: Binding<Int>) -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Controls")
                .font(.title2)
                .bold()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Base: \(base.wrappedValue)")
                    .font(.subheadline)
                    .bold()
                Stepper("Base", value: base, in: 1...5)
                    .labelsHidden()
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Exponent: \(exponent.wrappedValue)")
                    .font(.subheadline)
                    .bold()
                Stepper("Exponent", value: exponent, in: -4...4)
                    .labelsHidden()
            }
            
            Spacer()
        }
        .padding()
        .roundedUltraThinBackground()
        .frame(maxWidth: 500, maxHeight: .infinity)
    }
    
    // Bottom-Right Area: Render IndexFormComponent
    func bottomRightIndexSection(base: Int, exponent: Int) -> some View {
        VStack {
            IndexFormComponent(
                base: Double(base),
                exp: Double(exponent)
            )
        }
        .padding()
        .roundedUltraThinBackground()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
