//
//  CustomSearchbar.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 19/06/2024.
//

import SwiftUI

struct CustomSearchbar: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .foregroundColor(.white)
                Text("Search a car ....")
                    .font(.footnote)
                    .foregroundStyle(.white)
                Spacer()
            }
            .frame(height: 60)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color: .black.opacity(0.5), radius: 10)
            }
            .padding(.horizontal)
        })
    }
}

#Preview {
    CustomSearchbar()
}
