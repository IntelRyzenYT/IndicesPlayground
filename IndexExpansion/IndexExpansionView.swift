//
//  IndexExpansionView.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

struct IndexExpansionView: View {
    @StateObject var vm = IndexExpansionViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.indigo, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    expandedFormArea
                    
                    Spacer()
                    
                    HStack {
                        
                        sliders
                        
                        indexFormArea
                        
                    }
                    
                    
                }
            }
        }
        .onAppear {
            vm.generateString()
        }
        
        
        
    }

}

#Preview("Index Expansion Playground", traits: .landscapeLeft) {
    IndexExpansionView()
}
