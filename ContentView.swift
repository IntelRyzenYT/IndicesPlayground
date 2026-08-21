import SwiftUI

struct ContentView: View {
    enum PlaygroundTab: Int, Hashable {
        case indexExpansion = 0
        case visualisation = 1
    }
    
    @State var pageIdx = PlaygroundTab.indexExpansion
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $pageIdx) {
                    Tab("Index Expansion", image: "", value: .indexExpansion) {
                        IndexExpansionView()
                    }
                    Tab("Visualisation", image: "", value: .visualisation) {
                        VisualisationView()
                    }
                }
                
                .tint(.white)
            }
        }
    }
}

#Preview(traits: .landscapeLeft) {
    ContentView()
        .preferredColorScheme(.dark)
}
