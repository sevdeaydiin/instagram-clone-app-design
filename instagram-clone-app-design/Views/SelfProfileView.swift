//
//  SelfProfileView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 2.07.2024.
//

import SwiftUI

struct SelfProfileView: View {
    @State var index: Int = 0
    @Environment(\.dismiss) var dismiss
    let user: User
    
    var body: some View {
        NavigationView {
            VStack {
                //NavBar()
                ProfileDetail(user: user)
                
                HStack(spacing: user.isCurrentUser ? 100 : 150) {
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
                    if user.isCurrentUser == true {
                        Button(action: { index = 2}) {
                            Image(systemName: "person.crop.square")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }.foregroundColor(index == 2 ? .tabBarItem : .gray)
                    }
                    
                }.padding(.top, 20)
                
                if index == 0 {
                    PostsView(user: user)
                } else if index == 1 {
                    ReelsView()
                }
                
                Spacer()
                
                
            }.toolbar {

                ToolbarItem(placement: .topBarLeading) {
                    if user.isCurrentUser == true {
                        HStack(spacing: 3) {
                            Image(systemName: "lock")
                            Text("\(user.username)")
                                .fontWeight(.semibold)
                                .font(.title2)
                        }
                    } else {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.tabBarItem)
                        }
                    }
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    if user.isCurrentUser == true {
                        TopBarTrailing()
                    } else {
                        HStack {
                            //Text("\(user.username)").padding(.trailing, UIScreen.main.bounds.width / 4.5)
                            Image(systemName: "bell")
                            Image(systemName: "ellipsis")
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden()
                
        }
        }
}

#Preview {
    SelfProfileView(user: User.MOCK_USER[0])
}

private struct NavBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button {
                AuthService.shared.signOut()
            } label: {
                Image(systemName: "line.3.horizontal")
                    .foregroundStyle(Color.black)
            }
        }.padding()
    }
}

private struct PostsView: View {
    let user: User
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        ScrollView {
            PostGridView(posts: posts)
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
            Button {
                AuthService.shared.signOut()
            } label: {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(.tabBarItem)
            }
            
        }.padding(.horizontal)
            .padding(.bottom, 10)
    }
}

private struct ProfileDetail: View {
    @State private var showEditProfile = false
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
        HStack(alignment: .center, spacing: 40) {
            ZStack(alignment: .bottomTrailing) {
                Image("\(user.profileImageUrl ?? "")")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 90, height: 90)
                                    .clipShape(Circle())
                                
                
                if user.isCurrentUser == true {
                    PlusButton()
                }  else { EmptyView() }
                                }
                                .padding(.leading, 8)
            
            FollowStateView(value: 18, title: "posts")
            FollowStateView(value: 261, title: "followers")
            FollowStateView(value: 326, title: "following")
        }
            VStack(alignment: .leading) {
                if let fullname = user.fullname {
                    Text("\(fullname)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text("\(bio)")
                        .font(.subheadline)
                }
            }.padding(.bottom, 5)
            
            HStack(spacing: 5) {
                Button(action: {
                    if user.isCurrentUser {
                        showEditProfile.toggle()
                    } else {
                        print("Takip edildi")
                    }
                    
                }) {
                    Text(user.isCurrentUser ? "Edit profile" : "Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.tabBarItem)
                        .padding(.horizontal, user.isCurrentUser ? 35 : 45)
                        .padding(.vertical, 8)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
                    
                
                Button(action: {}) {
                    Text(user.isCurrentUser ? "Share profile" : "Message")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.tabBarItem)
                        .padding(.horizontal, user.isCurrentUser ? 35 : 45)
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
        .fullScreenCover(isPresented: $showEditProfile, content: {
            EditProfileView(user: user)
        })
    }
}

struct PlusButton: View {
    var body: some View {
        ZStack {
            Circle()
               .fill(Color.blue)
               .frame(width: 20, height: 20)
               .overlay(
                    Circle()
                      .stroke(.wB, lineWidth: 3))
                 
            Text("+")
              .font(.system(size: 18))
              .fontWeight(.semibold)
              .foregroundColor(.wB)
        }.offset(x: -5, y: 0)
    }
}
