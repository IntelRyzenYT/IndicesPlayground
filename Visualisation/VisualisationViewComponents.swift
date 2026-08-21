//
//  VisualisationViewComponents.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/20/26.
//

import SwiftUI

extension VisualisationView {
    var controlsArea: some View {
        VStack {
            if vm.visMode == 0 {
                baseSlider
            }
            modeSelector
            visModeSelector
        }
        .frame(maxWidth: 500, maxHeight: .infinity)
        .roundedUltraThinBackground()
    }
    var baseSlider: some View {
            SliderLabel(range: 1...6, label: "Base:", value: $vm.base)
                .roundedUltraThinBackground()
        
    }
    
    var modeSelector: some View {
        SegmentedPickerLabel(label: "Mode:", selection: $vm.mode) {
            Text("Square").tag(0)
            Text("Cube").tag(1)
        }
        .roundedUltraThinBackground()
        
    }
    
    var visModeSelector: some View {
        SegmentedPickerLabel(label: "Visualisation:", selection: $vm.visMode) {
            Text("Object").tag(0)
            Text("Graph").tag(1)
        }
        .roundedUltraThinBackground()
    }
    
    var indexFormArea: some View {
        VStack {
            Spacer()
            if vm.visMode == 0 {
                IndexFormComponent(base: vm.base, exp: vm.exp)
            } else {
                IndexFormComponent(omittingBase: true, omittingExp: false, exp: vm.exp)
            }
            Spacer()
            Text("Index Form")
                .font(.system(size: 32, design: .rounded))
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .roundedUltraThinBackground()
    }
    
    var squareVisual: some View {
        VStack {
            SquareVisualComponent(size: CGFloat(vm.base))
                .frame(width: 150)
                .padding()
            Text("Visual Form")
                .font(.system(size: 32, design: .rounded))
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 400)
        .roundedUltraThinBackground()
    }
    
    var cubeVisual: some View {
        VStack {
            Spacer(minLength: 100)
            CubeVisualComponent(length: Int(vm.base))
                .frame(width: 300)
                .padding()
            Text("Visual Form")
                .font(.system(size: 32, design: .rounded))
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 400)
        .roundedUltraThinBackground()
    }
    
    var graphVisual: some View {
        VStack {
            GraphVisualComponent(exp: Int(vm.exp))
                .frame(width: 200, height: 200)
                .padding()
            Text("Visual Form")
                .font(.system(size: 32, design: .rounded))
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 400)
        .roundedUltraThinBackground()
    }
}
