//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 12/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FrameworkView(name: "App Clips", imageName: "app-clip")
    }
}

#Preview {
    ContentView()
}


struct FrameworkView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Text(name)
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
        }
    }
}
