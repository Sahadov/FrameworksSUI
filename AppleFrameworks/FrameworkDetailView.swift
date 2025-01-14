//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 13/01/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
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
    
            Spacer()
            
            FrameworkView(framework: framework)
            Text(framework.description)
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
    FrameworkDetailView(framework: MockData.sample, isShowingDetailView: .constant(false))
}
