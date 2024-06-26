//
//  User.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 21.06.2024.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User { 
    static var MOCK_USER: [User] = [
        .init(id: UUID().uuidString, username: "sevdeaydiin", profileImageUrl: "image3", fullname: "Sevde Aydın", bio: "software developer", email: "sevdenuraydn7@gmail.com"),
        .init(id: UUID().uuidString, username: "ahmet.kcak", profileImageUrl: "ahmet", fullname: "Ahmet Koçak", bio: "Alanya/Antalya", email: "ahmet.kocak@gmail.com"),
        //.init(id: UUID().uuidString, username: "h.kubrakinik", profileImageUrl: "", fullname: "Hatice Kübra Kınık", bio: "kgtü | iç mimarlık", email: "kubra.kinik@gmail.com"),
        //.init(id: UUID().uuidString, username: "dilsad.erdgn", profileImageUrl: "", fullname: "Dilşad", bio: "", email: "dlsd.erdgn@gmail.com")
    ]
    
}
