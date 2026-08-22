import SwiftUI

struct ContentView: View {
    enum PlaygroundTab: Int, Hashable {
        case indexExpansion = 0
        case visualisation = 1
        case negative = 2
    }
    
    @State var pageIdx = PlaygroundTab.indexExpansion
    
    @State var welcome = true
    
    
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
        .sheet(isPresented: $welcome) {
            WelcomeView()
        }
    }
}

#Preview(traits: .landscapeLeft) {
    ContentView()
        .preferredColorScheme(.dark)
}
