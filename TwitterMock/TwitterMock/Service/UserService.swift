//
//  UserService.swift
//  TwitterMock
//
//  Created by seydoux on 2022/01/31.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    
    func fetchUser(withUid uid: String, completion: @escaping (User) -> Void) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, error in
                guard let snapshot = snapshot else { return }
                
                guard let user = try? snapshot.data(as: User.self) else { return }
                
                completion(user)
            }
    }
    
    func fetchUsers(completion: @escaping([User]) -> Void) {
        Firestore.firestore().collection("users")
            .getDocuments { snapshot, error in
                if let error = error {
                    print("DEBUG: Failed to fetch users. \(error.localizedDescription)")
                    return
                }
                
                guard let documents = snapshot?.documents else { return }
                let users = documents.compactMap({ try? $0.data(as: User.self) })
                
                completion(users)
            }
    }
}
