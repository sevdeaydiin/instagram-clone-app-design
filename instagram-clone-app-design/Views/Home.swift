//
//  Home.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 22.06.2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    NavBar()
                    Story()
                    Divider()
                    PostView()
                    Spacer()
                }.ignoresSafeArea()
            }
        }
    }
}

#Preview {
    Home()
}

private struct NavBar: View {
    var body: some View {
        HStack(spacing: 15) {
            Text("For you")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Button(action: {}) {
                Image(systemName: "heart")
                    .foregroundColor(.tabBarItem)
                    .font(.title3)
                    
            }
            Button(action: {} ){
                Image(systemName: "plus.message")
                    .foregroundColor(.tabBarItem)
                    .font(.title3)
            }
        }
        .padding(.horizontal)
    }
}

struct Story: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .bottom, spacing: 15) {
                
                ForEach(0..<6) { index in
                    VStack(alignment: .center) {
                        Image("image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.wB, lineWidth: 3))
                            .shadow(radius: 2)
                        
                        Text("user")
                            .font(.caption)
                    }
                    
                    
                }
            }
            .padding(.horizontal)
            
        }
       
    }
}

struct PostView: View {
    var body: some View {
        
            LazyVStack {
                ForEach(Post.MOCK_POST) { feed in
                    FeedCard(post: feed)
                }
            }
        }
    }
