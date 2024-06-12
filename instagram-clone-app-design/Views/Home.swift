//
//  Home.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 12.06.2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            NavBar()
            Story()
            Divider()
            Post()
            Spacer()
        }
    }
}

#Preview {
    Home()
}

struct NavBar: View {
    var body: some View {
        HStack() {
            Text("Instagram")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Button(action: {}) {
                Image(systemName: "heart")
                    .foregroundColor(.black)
            }
            Button(action: {} ){
                Image(systemName: "plus.message")
                    .foregroundColor(.black)
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
                            .overlay(Circle().stroke(Color.white, lineWidth: 3))
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

struct Post: View {
    var body: some View {
        ScrollView {
            ForEach(0..<6) { index in
            
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Image("image")
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
            
        }
    }

