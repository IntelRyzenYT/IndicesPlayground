//
//  VisualisationViewModel.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/20/26.
//

import SwiftUI
import Foundation

class VisualisationViewModel: ObservableObject {
    @Published var exp: Double = 2

    @Published var base: Double = 2
    
    @Published var mode: Int = 0 {
        didSet {
            exp = mode == 0 ? 2 : 3
        }
    }
    
    @Published var visMode: Int = 0
    
    init() {}
}
