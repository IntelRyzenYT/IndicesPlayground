//
//  String+FractionNotation.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/24/26.
//

import Foundation



extension String {
    static func fraction(_ fraction: Double) -> String {
        if fraction.truncatingRemainder(dividingBy: 1) == 0 {
            return fraction.formatted()
        }
        
        
        switch fraction {
        case 0.5:
            return "1/2"
        case 0.25:
            return "1/4"
        case 0.125:
            return "1/8"
        case 0.0625:
            return "1/16"
        default:
            fatalError("not supported decimal value")
        }
    }
}
