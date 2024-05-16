//
//  ProductModel.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import Foundation
struct ProductModel: Codable {
    let data: [Product]
}
struct Product: Codable, Identifiable {
    var id = UUID().uuidString
    let itemID, value, currency, title: String
    let description: Description
    
    var currencySymbol: String {
        return currencySymbol(for: currency) ?? ""
    }
    
    var itemTitle : String
    {
        switch deviceLanguage {
        case "fr-CA":
            return "Article"
        default:
            return title
        }
    }
    
    var itemValue : String
    {
        return (currencySymbol) + value + " (\(currency)) "
    }
    
    func currencySymbol(for currencyCode: String) -> String? {
        let locale = Locale(identifier: "en_US")
        return locale.currencySymbol
    }
    enum CodingKeys: String, CodingKey {
        case itemID = "itemId"
        case value, currency, title, description
    }
    
}
struct Description: Codable {
    let enCA: String
    let frCA: String
    
    enum CodingKeys: String, CodingKey {
        case enCA = "en-CA"
        case frCA = "fr-CA"
    }
    
    var localizedDescription: String {
        switch deviceLanguage {
        case "fr-CA":
            return frCA
        default:
            return enCA
        }
    }
}
