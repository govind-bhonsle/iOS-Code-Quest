//
//  Constant.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import Foundation

let uuidStr = UUID().uuidString

let deviceLanguage = Locale.preferredLanguages.first ?? "en-CA"

enum HorizontalSpacing: CGFloat {
    case small = 8
    case medium = 16
    case large = 24
}

enum Spacing {
    static let horizontalPadding: CGFloat = 10
}

enum CornerRadius: CGFloat {
    case small = 8
    case medium = 12
    case large = 16
}

struct Constants {
    struct ContentType {
        static let applicationJsonUtf8 = "application/json;charset=utf-8"
    }
    
    static let magnifyingglass = "magnifyingglass"
    static let cart = "cart"
}
