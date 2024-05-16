//
//  Endpoint.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import Foundation
protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var method: RequestMethod { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
}

extension Endpoint {
    var scheme: String {
        return "https"
    }

    var host: String {
        return "saigovind4.github.io"
    }
}
