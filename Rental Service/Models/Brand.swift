//
//  Brands.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 18/06/2024.
//

import Foundation

struct Brand: Identifiable,Hashable,Codable {

    let id: String
    let brandName: String
    let imageName: String
    var carIds: [String]

}

