//
//  AuthDataService.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import Foundation
import FirebaseAuth

final class AuthDataService {
    
    static let shared = AuthDataService()
    private init(){}
    
    func getAuthUser() throws -> UserModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        
        return UserModel(user: user)
    }
    
    func createUserByEmail(email: String, password: String) async throws -> UserModel {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        return UserModel(user: result.user)
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
}


