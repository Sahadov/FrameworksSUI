//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 13/01/2025.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text("String")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
