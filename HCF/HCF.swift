//
//  HCF.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/24/26.
//

import Foundation

func hcf(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : hcf(b, a % b)
}
