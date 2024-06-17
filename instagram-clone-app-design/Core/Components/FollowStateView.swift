//
//  FollowStateView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 17.06.2024.
//

import SwiftUI

struct FollowStateView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(value)")
                .fontWeight(.semibold)
                .font(.subheadline)
            Text("\(title)")
                .font(.caption)
        }
    }
}

#Preview {
    FollowStateView(value: 12, title: "posts")
}
