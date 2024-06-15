//
//  SelfProfile.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 15.06.2024.
//

import SwiftUI

struct SelfProfile: View {
    var body: some View {
        VStack {
            
            NavBar()
            ProfileDetail()
            Spacer()
        }
    }
}

#Preview {
    SelfProfile()
}

private struct NavBar: View {
    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: "lock")
            Text("sevdeaydiin")
                .fontWeight(.semibold)
                .font(.title2)
            Spacer()
            Image(systemName: "plus.square")
                .padding(.trailing)
            Image(systemName: "text.justify")
            
        }.padding(.horizontal)
            .padding(.bottom, 10)
    }
}

struct ProfileDetail: View {
    var body: some View {
        
        VStack(alignment: .leading) {
        HStack(alignment: .center, spacing: 40) {
            Image("image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 90)
                .clipShape(Circle())
                //.overlay(
                    //Image(systemName: "plus")
                    //    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    //    .foregroundColor(.white)
                    //    .background(Color.blue)
                    //    .cornerRadius(20)
                    //    .position(x: 70, y: 80))
                .padding(.leading, 8)
            
            VStack {
                Text("18 ")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Text("posts")
                    .font(.caption)
            }
            VStack {
                Text("261")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Text("followers")
                    .font(.caption)
            }
            VStack {
                Text("326")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Text("following")
                    .font(.caption)
            }
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
                        .foregroundColor(.black)
                        .padding(.horizontal, 35)
                        .padding(.vertical, 8)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
                
                Button(action: {}) {
                    Text("Share profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.horizontal, 35)
                        .padding(.vertical, 8)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
                Button(action: {}) {
                    Image(systemName: "person.badge.plus")
                        .foregroundColor(.black)
                        .padding(.horizontal, 11)
                        .padding(.vertical, 6)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
            }
            
        }
    }
}

