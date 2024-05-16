//
//  Constant.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import SwiftUI
import Foundation
let uuidStr = UUID().uuidString
let sampleProduct: Product = Product(id: uuidStr,
                                     itemID: "2acf4ac1-4000-4766-91ac-3a0ab47a811c",
                                     value: "100.00",
                                     currency: "CAD",
                                     title: "Item 1",
                                     description: Description(enCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (EN).", 
                                                              frCA: "Lorem ipsum dolor sit amet, consectetur adipiscing elit (FR)."))

let deviceLanguage = Locale.preferredLanguages.first ?? "en-CA"
