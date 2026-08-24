//
//  NegativeVisualisationViewModel.swift
//  IndicesPlayground
//
//  Created by OneLeaf on 24/08/26.
//

import SwiftUI

final class NegativeVisualisationViewModel: ObservableObject {
    @Published var base: Double = 2 {
        didSet {
            getResult()
        }
    }
    @Published var exponent: Double = -1 {
        didSet {
            getResult()
        }
    }
    
    @Published var resultValue: Double = 0.5
    
    
    
    private func getResult() {
        resultValue = pow(Double(base), Double(exponent))
    }
    
    let numberLine = [
        0.0625, 0.125, 0.25, 0.5, 1, 2, 4, 8
    ]
    
    
}


