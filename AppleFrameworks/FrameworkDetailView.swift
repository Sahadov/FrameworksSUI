//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 13/01/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label)) // black or white depending on the mode
                        .imageScale(.large)
                        .frame(width: 44, height: 44) // standart size for a touch target
                        .padding()
                }
            }
    
            Spacer()
            
            FrameworkView(framework: MockData.sample)
            Text(MockData.sample.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}


#Preview {
    FrameworkDetailView(framework: MockData.sample)
}
