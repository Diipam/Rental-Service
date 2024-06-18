//
//  MainTabbarView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 08/06/2024.
//

import SwiftUI

struct MainTabbarView: View {
    @State private var selectedtab: Int = 0
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .environment(\.symbolVariants, selectedtab == 0 ? .fill : .none)
                        Text("Explore")
                    }
                    .onAppear{
                        selectedtab = 0
                    }
                }
            Text("Favourite")
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                            .environment(\.symbolVariants, selectedtab == 1 ? .fill : .none)
                        Text("Favourite")
                    }
                    .onAppear{
                        selectedtab = 1
                    }
                }
            Text("Trips")
                .tabItem {
                    VStack {
                        Image(systemName: "road.lanes")
                            .environment(\.symbolVariants, selectedtab == 2 ? .fill : .none)
                        Text("Trips")
                    }
                    .onAppear{
                        selectedtab = 2
                    }
                }
            Text("Inbox")
                .tabItem {
                    VStack {
                        Image(systemName: "bubble")
                            .environment(\.symbolVariants, selectedtab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                    .onAppear{
                        selectedtab = 3
                    }
                }
            Text("More")
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                            .environment(\.symbolVariants, selectedtab == 4 ? .fill : .none)
                        Text("More")
                    }
                }
                .onAppear{
                    selectedtab = 4
                }
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    MainTabbarView()
}
