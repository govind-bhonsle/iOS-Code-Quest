//
//  ProductService.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import Foundation
protocol ProductServiceable {
    func getProducts() async -> Result<ProductModel, RequestError>
}

struct ProductService: HTTPClient, ProductServiceable
{
    func getProducts() async -> Result<ProductModel, RequestError> {
        return await sendRequest(endpoint: ProductEndPoint.products, responseModel: ProductModel.self)
    }
}
