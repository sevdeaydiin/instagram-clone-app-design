//
//  SearchViewModel.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 26.06.2024.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUser() }
    }
    
    @MainActor
    func fetchAllUser() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
