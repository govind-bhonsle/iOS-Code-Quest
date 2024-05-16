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
            HStack(alignment: .firstTextBaseline, spacing: 8) {
                Text(product.itemTitle + " : ")
                    .font(.headline)
                    .foregroundStyle(.colorGreenDark)
                Text(product.itemValue)
                    .font(.subheadline)
                    .foregroundStyle(.colorGreenMedium)
            }
            
            HStack(alignment: .firstTextBaseline, spacing: 8) {
                Text("Description:")
                    .font(.headline)
                    .foregroundColor(.colorGreenDark)
                
                Text(product.description.localizedDescription)
                    .font(.subheadline)
                    .lineLimit(nil)
            }
        }
        .padding(0)
        .listRowSeparator(.hidden)
    }
}

#Preview {
    ProductListItemView(product: sampleProduct)
}
