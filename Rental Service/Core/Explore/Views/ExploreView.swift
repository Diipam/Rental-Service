//
//  ExploreView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 10/06/2024.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ExploreViewModel()
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    GradientColorbackground()
                    VStack {
                        Spacer().frame(height: 150)
                        CustomSearchbar()
                        Spacer().frame(height: 60)
                        PopularBrandsView(viewModel: viewModel)
                        TopCarView(viewModel: viewModel)
                    }
                }
            }
            .navigationStackModifier()
        }
    }
}

#Preview {
    ExploreView(viewModel: ExploreViewModel())
}

struct GradientColorbackground: View {
    var body: some View {
        VStack {
            LinearGradient(colors: [.gray, .blue], startPoint: .top, endPoint: .bottom)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            Spacer()
        }
    }
}

