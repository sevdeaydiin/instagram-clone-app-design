//
//  AuthService.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 23.06.2024.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws{}
    
    func createUser(email: String, password: String, username: String) async throws{}
    
    func loadUserData() async throws{}
    
    func signOut(){}
    
}
