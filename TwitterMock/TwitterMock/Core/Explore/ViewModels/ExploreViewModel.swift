//
//  ExploreViewModel.swift
//  TwitterMock
//
//  Created by seydoux on 2022/01/31.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    let service = UserService()
    
    init() {
        self.fetchUsers()
    }
    
    func fetchUsers() {
        service.fetchUsers { users in
            self.users = users
            
            print("DEBUG: Users \(users)")
        }
    }
}
