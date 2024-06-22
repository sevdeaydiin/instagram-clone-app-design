//
//  MainTabView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 22.06.2024.
//

import SwiftUI

struct MainTabView: View {
    let height: CGFloat = UIScreen.main.bounds.height
    var body: some View {
        TabView {
            Home()
                .tabItem { Image(systemName: "house") }
            SearchView()
                .tabItem { Image(systemName: "magnifyingglass") }
            PostAdd()
                .tabItem { Image(systemName: "plus.square") }
            ReelsPlay()
                .tabItem { Image(systemName: "play.rectangle") }
            SelfProfile(user: User.MOCK_USER[0])
                .tabItem { Image(systemName: "person.crop.circle") }
        }
        .accentColor(.tabBarItem)
        .frame(height: height)
            
    }
}

#Preview {
    MainTabView()
}
