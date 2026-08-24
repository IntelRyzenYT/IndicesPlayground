//
//  IndexExpansionViewComponents.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/20/26.
//

import SwiftUI

extension IndexExpansionView {
    var sliders: some View {
        VStack {
            SliderLabel(range: 1...30, label: "Base:", value: $vm.base)
                .roundedUltraThinBackground()
            SliderLabel(range: 1...10, label: "Index:", value: $vm.exp)
                .roundedUltraThinBackground()
            
        }
        .frame(maxWidth: 500, maxHeight: .infinity)
        .roundedUltraThinBackground()
    }
    
    var indexFormArea: some View {
        VStack {
            Spacer()
            IndexFormComponent(base: vm.base, exp: vm.exp)
            Spacer()
            Text("Index Form")
                .font(.system(size: 32, design: .rounded))
                .bold()
                .padding()
        }
        .frame(maxWidth: 500, maxHeight: .infinity)
        .roundedUltraThinBackground()
        
    }
    
    var expandedFormArea: some View {
        VStack {
            Spacer(minLength: 150)
            Text("\(vm.expr)")
                .padding()
                .font(.system(size: 64 - vm.exp * 3))
            Spacer()
            Text(" = \(pow(vm.base, vm.exp).formatted())")
                .font(.system(size: 24, weight: .bold))
            Text("Expanded Form")
                .font(.system(size: 32, design: .rounded))
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .roundedUltraThinBackground()
    }
}
