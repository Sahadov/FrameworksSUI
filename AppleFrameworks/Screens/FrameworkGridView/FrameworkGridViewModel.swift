//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Dmitry Volkov on 13/01/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [GridItem.init(.flexible()),
                               GridItem.init(.flexible()),
                               GridItem.init(.flexible())]
}
