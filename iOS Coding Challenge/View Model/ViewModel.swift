//
//  ViewModel.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    
    private let service: ProductServiceable
    
    init(service: ProductServiceable) {
        self.service = service
    }
    
    func fetchData(completion: @escaping (Result<Bool, RequestError>) -> Void) async {
        let result = await self.service.getEmployees()
        switch result {
        case .success(let response):
            DispatchQueue.main.async {   // <====
                self.products = response.data
            }
            completion(.success(true))
        case .failure(let error):
            completion(.failure(error))
        }
    }
}
