//
//  ViewModel.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import SwiftUI
@MainActor
class ViewModel: ObservableObject {
    
    // MARK: - Properties
    @Published var products: [Product] = []
    
    private let service: ProductServiceable
    
    init(service: ProductServiceable) {
        self.service = service
    }
    
    // MARK: - asynchronous func fetchData(completion:)
    func fetchData(completion: @escaping (Result<Bool, RequestError>) -> Void) async {
        let result = await self.service.getProducts()
        switch result {
        case .success(let response):
            self.products = response.products
            completion(.success(true))
        case .failure(let error):
            completion(.failure(error))
        }
    }
}
