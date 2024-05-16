//
//  RequestError.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import Foundation
enum RequestError: Error, LocalizedError {
    case decode
    case invalidURL
    case noResponse
    case unauthorized
    case unexpectedStatusCode
    case unknown
    
    var customMessage: String {
        switch self {
        case .decode:
            return "Decoding error"
        case .unauthorized:
            return "Session expired"
        default:
            return "Unknown error"
        }
    }
}
