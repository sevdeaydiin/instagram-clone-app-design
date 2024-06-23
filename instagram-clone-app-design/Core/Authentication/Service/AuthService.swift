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
    
    func login(withEmail email: String, password: String) async throws{
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("Failed to log in with error \(error.localizedDescription)")
        }
    }
    
    func createUser(email: String, password: String, username: String) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
        } catch {
            print("hata: \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async throws{}
    
    func signOut() {
        print("sign out")
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
}
