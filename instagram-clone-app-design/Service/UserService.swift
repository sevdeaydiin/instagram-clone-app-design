//
//  UserService.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 26.06.2024.
//

import Foundation
import Firebase

struct UserService {
    
    @MainActor
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}
