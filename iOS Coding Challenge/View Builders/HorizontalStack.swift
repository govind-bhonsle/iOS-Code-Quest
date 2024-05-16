//
//  HorizontalStack.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 16/05/24.
//

import SwiftUI
// MARK: - HorizontalStack Custom Component
struct HorizontalStack<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: HorizontalSpacing.small.rawValue) {
            content
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}
