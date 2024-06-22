//
//  MainTabView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 22.06.2024.
//

import SwiftUI

struct MainTabView: View {
    let height: CGFloat = UIScreen.main.bounds.height
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            Home()
                .onAppear() { selectedIndex = 0 }
                .tabItem { Image(systemName: "house") }
                .tag(0)
            
            SearchView()
                .onAppear() { selectedIndex = 1 }
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            PostAddView(tabIndex: $selectedIndex)
                .onAppear() { selectedIndex = 2 }
                .tabItem { Image(systemName: "plus.square") }
                .tag(2)
            
            ReelsPlay()
                .onAppear() { selectedIndex = 3 }
                .tabItem { Image(systemName: "play.rectangle") }
                .tag(3)
            
            SelfProfileView(user: User.MOCK_USER[0])
                .onAppear() { selectedIndex = 4 }
                .tabItem { Image(systemName: "person.crop.circle") }
                .tag(4)
        }
        .accentColor(.tabBarItem)
        .frame(height: height)
            
    }
}

#Preview {
    MainTabView()
}
