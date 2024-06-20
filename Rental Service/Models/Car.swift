//
//  Car.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 20/06/2024.
//

import Foundation

struct Car : Identifiable, Hashable, Codable {
    let id: String
    let carName: String
    var rating: Double
    var brand: String
    var pricePerDay: Int
    var description: String
    var mainImageName: String
    var imageName: [String]
    var insurance: String
    var maxdistance: Float?
    var numberOfSeats: Int
    var gasType: String
    var hostName: String
    var hostImage: String
    var hostJoinDate: String
    var isFavourite: Bool

}
