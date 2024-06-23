//
//  ContentViewModel.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 23.06.2024.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
       setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink{ [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }
}
