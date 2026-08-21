//
//  IndexExpansionViewModel.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/20/26.
//

import SwiftUI
import Combine

class IndexExpansionViewModel: ObservableObject {
    @Published var base: Double = 2 {
        didSet {
            generateString()
        }
    }
    @Published var exp: Double = 2 {
        didSet {
            generateString()
        }
    }
    @Published var expr = ""
    
    
    init() {    }
    
    func generateString() {
        var str = ""
        for i in 0..<Int(exp) {
            str.append("\(base.formatted())\(i+1<Int(exp) ? " × " : "")")
        }
        expr = str
    }
}
