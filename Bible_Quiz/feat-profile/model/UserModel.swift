//
//  UserModel.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/21.
//

import Foundation
import Swift
import FirebaseAuth

struct UserModel: Codable {
    let id: String
    let name: String?
    let surname: String?
    let email: String?
    let displayImage: String?
    let quizScore: [Int]?
    
    init(user: User){
        self.id = user.uid
        self.email = user.email
        self.displayImage = user.photoURL?.absoluteString
        self.name = ""
        self.surname = ""
        self.quizScore = [0]
    }
}
