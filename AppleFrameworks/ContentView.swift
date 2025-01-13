//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 12/01/2025.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = [GridItem.init(.flexible()),
                               GridItem.init(.flexible()),
                               GridItem.init(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) {framework in
                        FrameworkView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    ContentView()
}


struct FrameworkView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
