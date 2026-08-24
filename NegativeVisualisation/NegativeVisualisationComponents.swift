//
//  NegativeVisualisationComponents.swift
//  IndicesPlayground
//
//  Created by OneLeaf on 24/08/26.
//

import SwiftUI

extension NegativeVisualisationView {
    
    var topNumberLineSection: some View {
        VStack(spacing: 16) {
            Text("Exponent Visualisation")
                .font(.headline)
            
            ZStack {
                Divider()
                    .offset(y: 12)
                    .padding()
                HStack(spacing: 16) {
                    
                    ForEach(vm.numberLine, id: \.self) { value in
                        VStack(spacing: 8) {
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 25.0)
                                    .foregroundStyle(value == vm.resultValue ? .thickMaterial : .thinMaterial)
                                    .frame(width: 48, height: 24)
                                Text(String.fraction(value))
                                    .font(.subheadline)
                                    .bold()
                            }
                            if value == vm.resultValue {
                                Image(systemName: "triangle.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 18))
                            }
                            
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 200)
        .roundedUltraThinBackground()
    }
    
    var bottomControlsSection: some View {
        VStack {
            SliderLabel(range: -4...3, label: "Exponent:", value: $vm.exponent, tint: .red)
                .roundedUltraThinBackground()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .roundedUltraThinBackground()
    }
    
    var bottomRightIndexSection: some View {
        VStack {
            Spacer()
            IndexFormComponent(base: vm.base, exp: vm.exponent)
            Spacer()
            Text("Index Form")
                .font(.system(size: 32, design: .rounded))
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .roundedUltraThinBackground()
        
    }
}

#Preview(traits: .landscapeLeft) {
    NegativeVisualisationView()
        .preferredColorScheme(.dark)
}
