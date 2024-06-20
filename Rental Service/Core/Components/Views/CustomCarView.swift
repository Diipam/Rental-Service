//
//  CustomCarView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 20/06/2024.
//

import SwiftUI

struct CustomCarView: View {
    @StateObject var viewModel: ExploreViewModel
    @State private var isFavourite: Bool
    var index: Int
    init(viewModel: ExploreViewModel, index: Int) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.isFavourite = viewModel.car[index].isFavourite
        self.index = index
    }

    var body: some View {
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .frame(height: 150)
                .overlay {
                    HStack {
                        Image(viewModel.car[index].mainImageName)
                            .resizable()
                            .frame(width: 100, height: 50)
                        VStack(alignment: .leading, spacing: 10) {
                            Text(viewModel.car[index].carName)
                                .font(.headline)
                                .fontWeight(.semibold)
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.orange)
                                Text(String(format: "%.1f", viewModel.car[index].rating))
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                            }
                            Text("By Dhakal Company Co.ltd ")
                                .foregroundStyle(.gray)
                                .font(.subheadline)
                        }
                        Spacer()
                        Button(action: {
                            isFavourite.toggle()
                        }, label: {
                            Image(systemName: isFavourite ? "heart.fill" : "heart")
                                .foregroundStyle(.red)
                        })
                    }
                    .padding(.horizontal)

                }
    }
}

#Preview {
    CustomCarView(viewModel: ExploreViewModel(), index: 0)
}
