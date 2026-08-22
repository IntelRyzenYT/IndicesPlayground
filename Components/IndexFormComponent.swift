//
//  IndexFormComponent.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

struct IndexFormComponent: View {
    let base: Double
    let exp: Double
    
    var omittingBase = false
    var omittingExp = false
    
    init(base: Double, exp: Double) {
        self.base = base
        self.exp = exp
    }
    
    init(omittingBase: Bool, omittingExp: Bool, base: Double? = nil, exp: Double? = nil) {
        if omittingBase {
            self.base = 0
        } else {
            self.base = base!
        }
        if omittingExp {
            self.exp = 0
        } else {
            self.exp = exp!
        }
        
        self.omittingExp = omittingExp
        self.omittingBase = omittingBase
    }
    
    var body: some View {
        ZStack {
            Text(omittingBase ? "x" : base.formatted())
                .font(.system(size: 84))
                .fontDesign(.rounded)
                .frame(maxWidth: .infinity)
                .overlay(alignment: .topTrailing) {
                    if exp != 1 {
                        Text(omittingExp ? "y" : exp.formatted())
                            .font(.system(size: 64))
                            .fontDesign(.rounded)
                            .frame(maxWidth: .infinity)
                            .offset(
                                x: (exp == 10 ? 64 : 50) + (base >= 10 ? 10 : 0),
                                y: -40
                            )
                    }
                }
        }
    }
}

#Preview {
    IndexFormComponent(base: 2, exp: 2)
}

#Preview("Omitting Base") {
    IndexFormComponent(omittingBase: true, omittingExp: false, exp: 2)
}
#Preview("Omitting Exp") {
    IndexFormComponent(omittingBase: false, omittingExp: true, base: 4)
}
