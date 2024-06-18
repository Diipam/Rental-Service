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
}
