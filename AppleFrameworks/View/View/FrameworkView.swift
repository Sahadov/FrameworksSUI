//
//  FrameworkView.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 13/01/2025.
//

import SwiftUI

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
