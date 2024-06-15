//
//  instagram_clone_app_designApp.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 12.06.2024.
//

import SwiftUI

@main
struct instagram_clone_app_designApp: App {
    let height: CGFloat = UIScreen.main.bounds.height
    var body: some Scene {
        WindowGroup {
            TabView {
                Home()
                    .tabItem { Image(systemName: "house") }
                Search()
                    .tabItem { Image(systemName: "magnifyingglass") }
                PostAdd()
                    .tabItem { Image(systemName: "plus.square") }
                ReelsPlay()
                    .tabItem { Image(systemName: "play.rectangle") }
                SelfProfile()
                    .tabItem { Image(systemName: "person.crop.circle") }
            }.frame(height: height)
        }
    }
}
