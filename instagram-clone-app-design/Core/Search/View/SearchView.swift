//
//  SearchView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 21.06.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.tabBarItem)
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                            .foregroundColor(.tabBarItem)
                                    }
                                    
                                }.font(.footnote)
                                Spacer()
                                Button( action: {}, label: {
                                    Text("x")
                                        .fontWeight(.light)
                                        .font(.callout)
                                        .foregroundStyle(.gray)
                                })
                            }.padding(.horizontal)
                                .padding(.vertical, 3)
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: { user in
                UserProfileView(user: user)
            })

                .navigationBarTitleDisplayMode(.inline)
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    SearchView()
}
