//
//  MainTabbarView.swift
//  Rental Service
//
//  Created by Smart Solar Nepal on 08/06/2024.
//

import SwiftUI

import SwiftUI

struct MainTabbarView: View {
    @StateObject private var viewModel = ExploreViewModel()
    @State private var selectedTab: Int = 0
    var body: some View {
        TabView {
            ExploreView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .environment(\.symbolVariants,selectedTab == 0 ? .fill : .none)
                        Text("Search")
                    }
                }
                .onAppear{
                    selectedTab = 0
                }
            FavouriteView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                            .environment(\.symbolVariants,selectedTab == 1 ? .fill : .none)
                        Text("Favorites")
                    }
                }
                .onAppear{
                    selectedTab = 1
                }
            TripsView()
                .tabItem {
                    VStack {
                        Image(systemName: "road.lanes")
                            .environment(\.symbolVariants,selectedTab == 2 ? .fill : .none)
                        Text("Trips")
                    }
                }
                .onAppear{
                    selectedTab = 2
                }
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble")
                            .environment(\.symbolVariants,selectedTab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear{
                    selectedTab = 3
                }
            MoreView()
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                            .environment(\.symbolVariants,selectedTab == 4 ? .fill : .none)
                        Text("More")
                    }
                }
                .onAppear{
                    selectedTab = 4
                }
        }
        .onAppear{
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    MainTabbarView()
}
