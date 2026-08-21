//
//  View.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/20/26.
//

import SwiftUI

extension View {
    public func roundedUltraThinBackground( noFirstPadding: Bool = false, noLastPadding: Bool = false) -> some View {
        
        return self.modifier(RoundedUltraThinBg(noFirstPadding, noLastPadding))
                            
    }
}

fileprivate struct RoundedUltraThinBg: ViewModifier {
    let noFirstPadding: Bool
    let noLastPadding: Bool
    init(_ noFirstPadding: Bool = false, _ noLastPadding: Bool = false) {
        self.noFirstPadding = noFirstPadding
        self.noLastPadding = noLastPadding
    }
    func body(content: Content) -> some View {
        content
            .padding(.all, noFirstPadding ? 0 : nil)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .padding(.all, noLastPadding ? 0 : nil)
    }
}

#Preview {
    Text("Hello, world!")
        .modifier(RoundedUltraThinBg())
}
