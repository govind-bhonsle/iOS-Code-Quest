//
//  DescriptionRow.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 16/05/24.
//

import SwiftUI

struct DescriptionRow: View {
    let description: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 8) {
            Text("Description:")
                .itemTitleStyle()
            Text(description)
                .itemValueStyle()
                .lineLimit(nil)
        }
    }
}

#Preview {
    DescriptionRow(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (EN).")
}
