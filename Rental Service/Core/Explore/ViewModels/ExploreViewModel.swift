//
//  ExploreViewModel.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 18/06/2024.
//

import SwiftUI

class ExploreViewModel: ObservableObject {

    @Published var brands: [Brands] = [
        .init(id: UUID().uuidString, brandname: "Mercedes", imageName: "mercedes", carIDs: []),
        .init(id: UUID().uuidString, brandname: "BMW", imageName: "bmw", carIDs: []),
        .init(id: UUID().uuidString, brandname: "Jaguar", imageName: "jaguar", carIDs: []),
        .init(id: UUID().uuidString, brandname: "Audi", imageName: "audi", carIDs: [])
    ]

    @Published var car: [Car] = [
        .init(id: UUID().uuidString, carName: "Mercedes Benz C Class", rating: 4.9, brand: "Mercedes", pricePerDay: 40, description: "This 2023 Mercedes is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "merecedesC", imageName: ["mercedes_c_0","mercedes_c_1","mercedes_c_2","mercedes_c_3","mercedes_c_4"], insurance: "", numberOfSeats: 5, gasType: "", hostName: "Dwight Automotive", hostImage: "dwight", hostJoinDate: "20 Nov 2018",isFavourite: false),
        .init(id: UUID().uuidString, carName: "BMW X1", rating: 4.8, brand: "BMW", pricePerDay: 36, description: "This 2021 BMW is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "bmwx1", imageName: ["bmwx1_1","bmwx1_2","bmwx1_3"], insurance: "", numberOfSeats: 5, gasType: "", hostName: "Dwight Automotive", hostImage: "dwight", hostJoinDate: "20 Nov 2018",isFavourite: true)
    ]
}
