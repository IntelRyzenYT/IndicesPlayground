//
//  NegativeVisualisationView.swift
//  IndicesPlayground
//
//  Created by OneLeaf on 24/08/26.
//

import SwiftUI

struct NegativeVisualisationView: View {
    @State private var viewModel = NegativeVisualisationViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        Color.blue.opacity(0.3),
                        Color.purple.opacity(0.3)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 16) {
                    topNumberLineSection
                    
                    HStack(spacing: 16) {
                        bottomControlsSection(
                            base: $viewModel.base,
                            exponent: $viewModel.exponent
                        )
                        bottomRightIndexSection(
                            base: viewModel.base,
                            exponent: viewModel.exponent
                        )
                    }
                }
                .padding()
            }
            .navigationTitle("Negative Visualisation")
        }
    }
}
