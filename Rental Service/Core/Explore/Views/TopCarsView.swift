//
//  TopCarView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 20/06/2024.
//

import SwiftUI

struct TopCarsView: View {
    @StateObject var viewModel: ExploreViewModel
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        VStack {
            HStack {
                Text ("Top Cars 🔥")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            ForEach(viewModel.car) {cars in
                let index = viewModel.car.firstIndex(where: {$0 == cars}) ?? 0
                NavigationLink {
                    DetailView(viewModel: viewModel, index: index)
                } label: {
                    CustomCarView(index: index, viewModel: viewModel)
                        .padding(.bottom)
                }


            }
        }
        .padding()    }
}

#Preview {
    TopCarsView(viewModel: ExploreViewModel())
}
