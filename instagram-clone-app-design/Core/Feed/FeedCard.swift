//
//  FeedCard.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 22.06.2024.
//

import SwiftUI

struct FeedCard: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                if let user = post.user {
                    Image("\(user.profileImageUrl ?? "person")")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray.opacity(0.4), lineWidth: 1))
                    //.shadow(radius: 2)
                    Text("\(user.username)")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .foregroundStyle(Color.tabBarItem)
                    }
                }
                
            }.padding(.horizontal)
            
            VStack {
                Image("\(post.imageUrl)")
                    .resizable()
                    .scaledToFill()
                    .frame (height: 400)
                    .clipShape(Rectangle())
            }
            .padding(.vertical, 10)

            HStack {
                Button(action: {
                    
                    
                }) {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                }
                Button(action: {}) {
                    Image(systemName: "message")
                        .foregroundColor(.black)
                }
                Button(action: {}) {
                    Image(systemName: "paperplane")
                        .foregroundColor(.black)
                }
                
                Spacer()
                Button(action: {}) {
                    Image(systemName: "bookmark")
                        .foregroundColor(.black)
                        
                        
                }
                
            }
            .padding(.horizontal)
            .padding(.bottom, 5)
            
            VStack(alignment: .leading) {
                Text("\(post.likes) likes")
                    .font(.caption2)
                HStack(spacing: 3) {
                    Text("\(post.user?.username ?? "")")
                        .font(.caption2)
                        .fontWeight(.semibold)
                    Text("\(post.caption)")
                        .font(.caption2)
                        .fontWeight(.light)
                }
                Text("View 5 comment")
                    .font(.caption2)
                    .foregroundColor(.gray)
                
                HStack {
                    Image("image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15, height: 15)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray.opacity(0.4), lineWidth: 1))
                    
                    Text("Add a comment...")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
                
                Text("2 days ago")
                    .font(.caption2)
                    .foregroundColor(.gray)
                
            }.padding(.horizontal)
            
            
                
        }.padding(.bottom, 10)
    }
}

#Preview {
    FeedCard(post: Post.MOCK_POST[0])
}

