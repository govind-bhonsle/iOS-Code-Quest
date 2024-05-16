//
//  ProductModel.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import Foundation

struct ProductModel: Codable {
    let products: [Product]
    
    enum CodingKeys: String, CodingKey {
        case products = "data"
    }
}

struct Product: Codable, Identifiable {
    var id = UUID().uuidString
    let itemID, value, currency, title: String
    let description: LocalizedDescription
    
    var currencySymbol: String {
        return currencySymbol(for: currency) ?? ""
    }
    
    var formattedValue: String {
        return "\(currencySymbol)\(value) (\(currency))"
    }
    
    private func currencySymbol(for currencyCode: String) -> String? {
        let locale = Locale(identifier: "en_US")
        return locale.currencySymbol
    }
    
    enum CodingKeys: String, CodingKey {
        case itemID = "itemId"
        case value, currency, title, description
    }
}

struct LocalizedDescription: Codable {
    let enCA: String
    let frCA: String
    
    enum CodingKeys: String, CodingKey {
        case enCA = "en-CA"
        case frCA = "fr-CA"
    }
    
    var localizedTitle: String {
        return localizedString(for: deviceLanguage, enCA, frCA)
    }
    
    var localizedDescription: String {
        return localizedString(for: deviceLanguage, enCA, frCA)
    }
    
    private func localizedString(for language: String, _ english: String, _ french: String) -> String {
        switch language {
        case "fr-CA":
            return french
        default:
            return english
        }
    }
}
