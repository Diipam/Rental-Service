//
//  ExploreView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 10/06/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                GradientColorbackground()
            }
            .navigationStackModifier()
        }
    }
}

#Preview {
    ExploreView()
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
