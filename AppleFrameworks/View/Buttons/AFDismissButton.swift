//
//  AFDismissButton.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 13/01/2025.
//

import SwiftUI

struct AFDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label)) // black or white depending on the mode
                    .imageScale(.large)
                    .frame(width: 44, height: 44) // standart size for a touch target
                    .padding()
            }
        }
    }
}

#Preview {
    AFDismissButton(isShowingDetailView: .constant(true))
}
