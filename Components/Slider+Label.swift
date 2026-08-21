//
//  SegmentedPicker+Label.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

struct SliderLabel<Value: BinaryFloatingPoint>: View where Value.Stride: BinaryFloatingPoint {
    let range: ClosedRange<Value>
    let label: String
    @Binding var value: Value
    init(range: ClosedRange<Value>, label: String, value: Binding<Value>) {
        self.range = range
        self._value = value
        self.label = label
    }
    var body: some View {
        HStack {
            Text(label)
                .bold()
                .fontDesign(.rounded)
                .padding()
            SwiftUI.Slider(value: Binding(
                get: { value },
                set: { newValue in
                    self.value = trunc(newValue)
                }
            ), in: range) {}
                .padding()
                .overlay(alignment: .center) {
                    Text("\(value.formatted())")
                        .bold()
                        .offset(y: -20)
                }
                .tint(.indigo)
        }
       
    }
}

#Preview {
    @Previewable @State var value: Double = 0
    let range: ClosedRange<Double> = 1...10
    List {
        SliderLabel(range: range,label: "Base:", value: $value)
    }
    
}
