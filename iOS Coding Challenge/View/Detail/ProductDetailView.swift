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
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .firstTextBaseline, spacing: 8) {
                    Text("Item:")
                        .font(.headline)
                        .foregroundStyle(.colorGreenDark)
                    Text(product.itemTitle)
                        .font(.subheadline)
                        .foregroundStyle(.colorGreenMedium)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                

                HStack(alignment: .firstTextBaseline, spacing: 8) {
                    Text("Price:")
                        .font(.headline)
                        .foregroundStyle(.colorGreenDark)
                    Text(product.itemValue)
                        .font(.subheadline)
                        .foregroundStyle(.colorGreenMedium)
                    Spacer()

                }
                .frame(maxWidth: .infinity)

                HStack(alignment: .firstTextBaseline, spacing: 8) {
                    Text("Description:")
                        .font(.headline)
                        .foregroundColor(.colorGreenDark)
                    
                    Text(product.description.localizedDescription)
                        .font(.subheadline)
                        .foregroundStyle(.colorGreenDark)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .frame(maxWidth: .infinity)

            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(10)
            .background(Color.colorBackground.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
        
    }
}

#Preview() {
    ProductDetailView(product: sampleProduct)
}
