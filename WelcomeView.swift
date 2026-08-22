//
//  WelcomeView.swift
//  IndicesPlayground
//
//  Created by Samarth Bhate on 8/21/26.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Group {
                        Section("Features") {
                            Text("Index Expansion Visualiser")
                            Text("Square and Cube Visualiser")
                            Text("Negative Exponent Visualiser")
                        }
                        Section("Credits") {
                            Text("Developed with \(Text("∞ aura").foregroundStyle(LinearGradient(
                            colors: [.blue, .cyan],
                            startPoint: .leading,
                            endPoint: .trailing
                            )) by: Samarth Bhate & Vaibhav Reddy")
                        }
                    }
                    .listRowBackground(Rectangle().foregroundStyle(.quinary))
                }
                
                .scrollContentBackground(.hidden)
                Spacer()
                Button("Let's Go!") {
                    dismiss()
                }
                .padding()
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .background(.blue, in: RoundedRectangle(cornerRadius: 25.0))
                .padding()
            }
            .navigationTitle("Welcome!")
        }
        
    }
}

#Preview {
    WelcomeView()
}
