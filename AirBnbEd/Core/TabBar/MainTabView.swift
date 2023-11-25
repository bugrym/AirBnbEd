//
//  MainTabView.swift
//  AirBnbEd
//
//  Created by vbugrym on 25.11.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistsView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.circle") }
        }
    }
}

#Preview {
    MainTabView()
}
