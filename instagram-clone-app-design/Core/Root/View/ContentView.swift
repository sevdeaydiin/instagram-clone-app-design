//
//  ContentView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 23.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
