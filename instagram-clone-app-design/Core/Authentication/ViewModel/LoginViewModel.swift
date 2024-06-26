//
//  LoginViewModel.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 23.06.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = "sevdeaydin@gmail.com"
    @Published var password = "sevde123"
    
    func signIn() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
