//
//  FeedCard.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 18.06.2024.
//

import SwiftUI

struct FeedCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image("image3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray.opacity(0.4), lineWidth: 1))
                //.shadow(radius: 2)
                Text("user")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                Button(action: {}) {
                    Text("•••")
                        .fontWeight(.light)
                        .foregroundColor(.black)
                }
            }.padding(.horizontal)
            
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 200)
            }
            .padding(.bottom, 10)

            HStack {
                Button(action: {}) {
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
                Text("2.844 likes")
                    .font(.caption2)
                HStack {
                    Text("user")
                        .font(.caption2)
                        .fontWeight(.semibold)
                    Text("Explanation...")
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
    FeedCard()
}

            
