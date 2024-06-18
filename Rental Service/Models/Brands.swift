//
//  Brands.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 18/06/2024.
//

import Foundation

struct Brands: Identifiable, Hashable, Codable {
    let id: String
    let brandname: String
    let imageName: String
    var carIDs: [String]
}
