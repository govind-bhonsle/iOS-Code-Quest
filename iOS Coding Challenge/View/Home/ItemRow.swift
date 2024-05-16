//
//  ItemRow.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 16/05/24.
//

import SwiftUI

struct ItemRow: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 8) {
            Text("\(title) : ")
                .itemTitleStyle()
            Text(value)
                .itemValueStyle()
        }
    }
}

#Preview {
    ItemRow(title: "Item 1", value: "100.00")
}
