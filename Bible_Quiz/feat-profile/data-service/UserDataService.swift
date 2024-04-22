//
//  UserDataService.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/21.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

final class UserDataService{
    
    static let shared = UserDataService()
    private init(){}
    
    private let db = Firestore.firestore()
    
    func createNewUser(user: UserModel) async throws {
        try  db.collection("Users").document(user.id).setData(from: user)
        
    }
    
    func getUserData(userID: String) async throws -> UserModel {
        try await db.collection("Users").document(userID).getDocument(as: UserModel.self)
        
    }
}
