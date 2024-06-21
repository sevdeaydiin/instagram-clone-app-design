//
//  SelfProfile.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 15.06.2024.
//

import SwiftUI

struct SelfProfile: View {
    @State var index: Int = 0
    var body: some View {
        
        //NavigationStack {
            VStack {
                //NavBar()
                ProfileDetail()
                
                HStack(spacing: 100) {
                    Button(action: { index = 0 }) {
                        Image(systemName: "squareshape.split.3x3")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }.foregroundColor(index == 0 ? .tabBarItem : .gray)
                    Button(action: { index = 1 }) {
                        Image(index == 1 ? "reels" : "unselected-reels")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    Button(action: { index = 2}) {
                        Image(systemName: "person.crop.square")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }.foregroundColor(index == 2 ? .tabBarItem : .gray)
                }.padding(.top, 20)
                
                if index == 0 {
                    PostsView()
                } else if index == 1 {
                    ReelsView()
                }
                
                Spacer()
                
                
                
            }.toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    HStack(spacing: 3) {
                        Image(systemName: "lock")
                        Text("sevdeaydiin")
                            .fontWeight(.semibold)
                            .font(.title2)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    TopBarTrailing()
                }
        }
        }
    //}
    
}

#Preview {
    SelfProfile()
}

private struct PostsView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 2) {
                ForEach(0...9, id: \.self) { index in
                    Image("image2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.frame(height: UIScreen.main.bounds.width / 3)
                }
            }
        }
        
    }
}

private struct ReelsView: View {
    var body: some View {
        VStack {
            Text("reels")
        }
    }
}

private struct TagsView: View {
    var body: some View {
        VStack {
            
        }
    }
}

private struct TopBarTrailing: View {
    var body: some View {
        HStack(spacing: 5) {
            Button {} label: {
                Image(systemName: "plus.square")
                    .foregroundColor(.tabBarItem)
            }
            Button {} label: {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(.tabBarItem)
            }
            
        }.padding(.horizontal)
            .padding(.bottom, 10)
    }
}

private struct ProfileDetail: View {
    var body: some View {
        
        VStack(alignment: .leading) {
        HStack(alignment: .center, spacing: 40) {
            ZStack(alignment: .bottomTrailing) {
                                Image("image3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 90, height: 90)
                                    .clipShape(Circle())
                                
                ZStack {
                                        Circle()
                                            .fill(Color.blue)
                                            .frame(width: 20, height: 20)
                                            .overlay(
                                                Circle()
                                                    .stroke(.wB, lineWidth: 3)
                                            )
                                        
                                        Text("+")
                                            .font(.system(size: 18))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.wB)
                                            
                                    }
                                    .offset(x: -5, y: 0)
                                }
                                .padding(.leading, 8)
            
            FollowStateView(value: 18, title: "posts")
            FollowStateView(value: 261, title: "followers")
            FollowStateView(value: 326, title: "following")
        }
            VStack(alignment: .leading) {
                Text("sevde aydın")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("software developer")
                    .font(.subheadline)
   
            }.padding(.bottom, 5)
            
            HStack(spacing: 5) {
                Button(action: {}) {
                    Text("Edit profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.tabBarItem)
                        .padding(.horizontal, 35)
                        .padding(.vertical, 8)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
                
                Button(action: {}) {
                    Text("Share profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.tabBarItem)
                        .padding(.horizontal, 35)
                        .padding(.vertical, 8)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
                Button(action: {}) {
                    Image(systemName: "person.badge.plus")
                        .foregroundColor(.tabBarItem)
                        .padding(.horizontal, 11)
                        .padding(.vertical, 6)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
            }
            
        }
    }
}

