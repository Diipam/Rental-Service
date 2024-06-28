//
//  NotificationsView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 28/06/2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Activity")
                .font(.headline)
                .fontWeight(.bold)
            Divider()
            HStack(alignment: .top,spacing: 15) {
                Circle()
                    .frame(width: 75, height: 75)
                    .overlay {
                        Text("CarRentalApp")
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
                VStack(alignment: .leading) {
                    Text("Welcome to CarRentalApp")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text("Thanks for joining the CarRentalApp community. your adventure starts here")
                }
            }
            .padding()
            Divider()
        }
    }
}

#Preview {
    NotificationsView()
}
