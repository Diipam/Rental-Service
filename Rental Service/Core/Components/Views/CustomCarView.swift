//
//  CustomCarView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 20/06/2024.
//


import SwiftUI

struct CustomCarView: View {
    var index: Int
    @StateObject var viewModel: ExploreViewModel
    @State private var isFavorite: Bool
    init(index: Int, viewModel: ExploreViewModel) {
        self.index = index
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.isFavorite = viewModel.cars[index].isFavourite
    }
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .frame(height: 120)
            .overlay {
                HStack(spacing: 10) {
                    Image(viewModel.car[index].mainImageName)
                        .resizable()
                        .frame(width: 80,height: 50)
                        .scaledToFit()
                    VStack(alignment: .leading, spacing: 12) {
                        Text(viewModel.car[index].carName)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.orange)
                            Text(String(format: "%.1f", viewModel.car[index].rating))
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                        }
                        Text("By \(viewModel.car[index].hostName)")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    Button(action: {
                        isFavorite.toggle()
                    }, label: {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundStyle(.red)
                    })

                }
                .padding()
        }
    }
}

#Preview {
    CustomCarView(index: 0, viewModel: ExploreViewModel())
}
