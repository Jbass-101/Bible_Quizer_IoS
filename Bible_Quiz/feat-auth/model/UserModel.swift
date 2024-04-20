//
//  UserModel.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import Foundation
import FirebaseAuth

struct UserModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User){
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}
