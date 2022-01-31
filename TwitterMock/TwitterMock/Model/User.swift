//
//  User.swift
//  TwitterMock
//
//  Created by seydoux on 2022/01/31.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
