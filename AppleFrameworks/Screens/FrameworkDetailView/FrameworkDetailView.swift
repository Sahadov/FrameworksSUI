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
    @State private var isShowSafariView = false
    
    var body: some View {
        VStack {
            AFDismissButton(isShowingDetailView: $isShowingDetailView)

            Spacer()
            
            FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowSafariView) {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string:"www.apple.com")!))
        }
    }
}


#Preview {
    FrameworkDetailView(framework: MockData.sample, isShowingDetailView: .constant(false))
}
