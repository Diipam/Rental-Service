//
//  NavigationStackModifier.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 12/06/2024.
//

import SwiftUI

struct NavigationStackModifier: ViewModifier {

    func body(content: Content) -> some View {
        content 
            .scrollIndicators(.hidden)
            .background(Color(.systemGray4))
            .ignoresSafeArea()
            .navigationTitle("Find Cars")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Circle()
                        .fill(.white.opacity(0.5))
                        .frame(width: 45, height: 45)
                        .overlay {
                            Image(systemName: "bell.badge")
                                .foregroundStyle(.white)
                        }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image("DeepamDhakal")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .scaledToFill()
                        .clipShape(.circle)
                }
            }
    }
}

extension View {
    func navigationStackModifier() -> some View {
        return modifier(NavigationStackModifier())
    }
}
