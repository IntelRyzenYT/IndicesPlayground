//
//  SegmentedPicker+Label.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

struct SegmentedPickerLabel<Tag: Hashable, Content: View>: View {
    let label: String
    @Binding var selection: Tag
    let pickerContent: Content
    
    init(label: String, selection: Binding<Tag>, @ViewBuilder pickerContent: () -> Content) {
        self.label = label
        self._selection = selection
        self.pickerContent = pickerContent()
    }
    
    var body: some View {
        HStack {
            Text(label)
                .padding()
            Picker(label, selection: $selection) {
                pickerContent
            }
            .pickerStyle(.segmented)
            .padding()
        }
    }
}

#Preview {
    @Previewable @State var selection: Int = 0
    SegmentedPickerLabel(label: "Mode", selection: $selection) {
        Text("Square").tag(0)
        Text("Cube").tag(1)
    }
}
