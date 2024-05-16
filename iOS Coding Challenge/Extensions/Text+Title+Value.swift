//
//  Text+Title+Value.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 16/05/24.
//

import SwiftUI
extension Text {
    func itemTitleStyle() -> some View {
        self
            .font(.headline)
            .foregroundStyle(.colorGreenDark)
    }
    
    func itemValueStyle() -> some View {
        self
            .font(.subheadline)
            .foregroundStyle(.colorGreenMedium)
    }
}
