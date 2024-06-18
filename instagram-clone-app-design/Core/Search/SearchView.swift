//
//  SearchView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 18.06.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...15, id: \.self) { user in
                        HStack {
                            Image("image")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("sevdeaydiin")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.tabBarItem)
                                Text("Sevde Aydın")
                                    .foregroundColor(.tabBarItem)
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
                .searchable(text: $searchText, prompt: "Search...")
            }.navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
