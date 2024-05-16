//
//  ProductEndPoint.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import Foundation
enum ProductEndPoint {
    case products
}

extension ProductEndPoint: Endpoint
{
    var path: String {
        switch self {
        case .products:
            return "/products-api/response.json"
        }
    }
    
    var method: RequestMethod {
        switch self {
        case .products:
            return .get
        }

    }
    
    var header: [String : String]? {
        switch self {
        case .products:
            return ["Content-Type": Constants.ContentType.applicationJsonUtf8]
        }
    }
    
    var body: [String : String]? {
        return nil
    }
    
}
