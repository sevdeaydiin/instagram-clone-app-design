//
//  Post.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 22.06.2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "🦋", likes: 354, imageUrl: "image2", timestamp: Date(), user: User.MOCK_USER[0]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "♥️", likes: 354, imageUrl: "ahmet", timestamp: Date(), user: User.MOCK_USER[1]),
    ]
}
