//
//  PopularBrandsView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 20/06/2024.
//

import SwiftUI

struct PopularBrandsView: View {
    @StateObject private var viewModel: ExploreViewModel
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
            VStack {
                HStack {
                    Text("Popular Brands")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {}, label: {
                        Text("See All")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    })
                }
                .foregroundStyle(.white)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(viewModel.brands) { brand in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .frame(width: 150, height: 200)
                                .overlay {
                                    VStack {
                                        Image(brand.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 60, height: 60)
                                        Text(brand.brandname)
                                        Text("Best Brand")
                                            .font(.footnote)
                                            .foregroundStyle(.blue)
                                    }
                                }
                        }

                    }
                }
                .scrollIndicators(.hidden)

            }
            .padding(.horizontal)
            Spacer()
    }

}

#Preview {
    PopularBrandsView(viewModel: ExploreViewModel())
}
