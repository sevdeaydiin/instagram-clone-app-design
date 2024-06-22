//
//  LoggedInUserProfileView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 21.06.2024.
//

import SwiftUI
//ProfileView

struct UserProfileView: View {
    @State var index: Int = 0
    @Environment(\.dismiss) var dismiss
    let user: User
    
    
    var body: some View {
        
        //NavigationStack {
            VStack {
                //Text("\(user.username)")
                ProfileDetail(user: user)
                
                HStack(spacing: 150) {
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
                }.padding(.top, 20)
                
                if index == 0 {
                    PostsView(user: user)
                } else if index == 1 {
                    ReelsView()
                }
                
                Spacer()
                  
            }.toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.tabBarItem)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        //Text("\(user.username)").padding(.trailing, UIScreen.main.bounds.width / 4.5)
                        Image(systemName: "bell")
                        Image(systemName: "ellipsis")
                    }
                }
                
            }.navigationBarBackButtonHidden()
            .navigationTitle("\(user.username)")
    }
    //}
    
}

#Preview {
    UserProfileView(user: User.MOCK_USER[0])
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

private struct ProfileDetail: View {
    let user: User
    var body: some View {
        
        VStack(alignment: .leading) {
        HStack(alignment: .center, spacing: 40) {
         
                Image("\(user.profileImageUrl ?? "")")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 90, height: 90)
                                    .clipShape(Circle())
                                
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
                Button(action: {}) {
                    Text("Following    ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.tabBarItem)
                        .padding(.horizontal, 35)
                        .padding(.vertical, 8)
                        
                }.background(Color.gray.opacity(0.15))
                    .cornerRadius(7)
                
                Button(action: {}) {
                    Text("Message    ")
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
            
        }.padding(.horizontal, 5)
    }
}

