//
//  NegativeVisualisationViewModel.swift
//  IndicesPlayground
//
//  Created by OneLeaf on 24/08/26.
//

import SwiftUI

@Observable
final class NegativeVisualisationViewModel {
    var base: Int = 2
    var exponent: Int = -1
    
    var resultValue: Double {
        pow(Double(base), Double(exponent))
    }
}
