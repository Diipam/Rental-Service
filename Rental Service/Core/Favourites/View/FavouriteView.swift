//
//  FavouriteView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 20/06/2024.
//

import SwiftUI

struct FavouriteView: View {
    @StateObject private var viewModel: ExploreViewModel
    var favouriteCar: [Car]
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.favouriteCar = viewModel.cars.filter({$0.isFavorite})
    }

    var body: some View {
        NavigationStack {
            VStack {
                ForEach(favouriteCar) { cars in
                    let index = viewModel.cars.firstIndex(where: {$0 == cars}) ?? 0
                    CustomCarView(index: index, viewModel: viewModel)
                        .padding()
                }
                Spacer()
            }
            .background(Color(.systemGray6))
            .navigationTitle("Favourites")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FavouriteView(viewModel: ExploreViewModel())
}
