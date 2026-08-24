//
//  NegativeVisualisationView.swift
//  IndicesPlayground
//
//  Created by OneLeaf on 24/08/26.
//

import SwiftUI

struct NegativeVisualisationView: View {
    @StateObject var vm = NegativeVisualisationViewModel()
    
    var body: some View {
            ZStack {
                LinearGradient(
                    colors: [
                        Color.cyan,
                        Color.green
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack {
                    topNumberLineSection
                    
                    HStack {
                        bottomControlsSection
                        
                        bottomRightIndexSection
                    }
                }
                .padding()
            }
    }
}

#Preview(traits: .landscapeLeft) {
    NegativeVisualisationView()
        .preferredColorScheme(.dark)
}
