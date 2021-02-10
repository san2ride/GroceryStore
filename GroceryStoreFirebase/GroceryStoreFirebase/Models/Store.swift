//
//  Store.swift
//  GroceryStoreFirebase
//
//  Created by Jason Sanchez on 1/7/21.
//

import Foundation

struct Store: Codable {
    var id: String?
    let name: String
    let address: String
    var items: [String]?
}
