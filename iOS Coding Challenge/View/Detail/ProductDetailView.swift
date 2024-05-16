//
//  ProductDetailView.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HorizontalStack {
                Text("Item:")
                    .itemTitleStyle()
                Text(product.title)
                    .itemValueStyle()
            }
            
            HorizontalStack {
                Text("Price:")
                    .itemTitleStyle()
                Text(product.formattedValue)
                    .itemValueStyle()
                
            }
            
            HorizontalStack {
                Text("Description:")
                    .itemTitleStyle()
                Text(product.description.localizedDescription)
                    .itemValueStyle()
                    .multilineTextAlignment(.leading)
            }
        }
        .maxWidthMinus(40)
        .padding(Spacing.horizontalPadding)
        .customBackground(cornerRadius: CornerRadius.medium.rawValue)
    }
}

#Preview() {
    let sampleProduct: Product = Product(id: uuidStr,
                                         itemID: "2acf4ac1-4000-4766-91ac-3a0ab47a811c",
                                         value: "100.00",
                                         currency: "CAD",
                                         title: "Item 1",
                                         description: LocalizedDescription(enCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (EN).",
                                                                           frCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (FR)."))
    return ProductDetailView(product: sampleProduct)
}
