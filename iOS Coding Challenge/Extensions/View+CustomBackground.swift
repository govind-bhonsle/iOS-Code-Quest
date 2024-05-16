//
//  View+CustomBackground.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 16/05/24.
//

import Foundation
import SwiftUI

extension View {
    func customBackground(cornerRadius: CGFloat, borderColor: Color = .gray, borderWidth: CGFloat = 1) -> some View {
        self.background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(Color.colorBackground)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(borderColor, lineWidth: borderWidth)
                )
        )
    }
}

extension View
{
    func maxWidthMinus(_ value: CGFloat) -> some View {
        self.frame(width: UIScreen.main.bounds.width - value)
    }
}
