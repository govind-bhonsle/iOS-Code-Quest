//
//  ProductListItemView.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import SwiftUI

struct ProductListItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ItemRow(title: product.title, value: product.formattedValue)
            DescriptionRow(description: product.description.localizedDescription)
        }
        .padding(0)
        .listRowSeparator(.hidden)
    }
}

#Preview {
    let sampleProduct: Product = Product(id: uuidStr,
                                         itemID: "2acf4ac1-4000-4766-91ac-3a0ab47a811c",
                                         value: "100.00",
                                         currency: "CAD",
                                         title: "Item 1",
                                         description: LocalizedDescription(enCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (EN).",
                                                                           frCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (FR)."))
    return ProductListItemView(product: sampleProduct)
}
