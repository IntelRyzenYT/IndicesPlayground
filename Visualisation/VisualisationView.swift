//
//  VisualisationView.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/20/26.
//

import SwiftUI

struct VisualisationView: View {
    @StateObject var vm = VisualisationViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.red, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    if vm.visMode == 0 {
                        if vm.mode == 0 {
                            squareVisual
                        } else {
                            cubeVisual
                        }
                    } else {
                        graphVisual
                    }
                    Spacer()
                    HStack(alignment: .top) {
                        controlsArea
                        indexFormArea
                    }
                }
            }
        }
    }
}

#Preview("Visualisation Playground", traits: .landscapeLeft) {
    VisualisationView()
}
