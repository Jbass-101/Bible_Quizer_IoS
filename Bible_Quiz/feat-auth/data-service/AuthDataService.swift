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
            print("No USER ERROR")
            throw URLError(.badServerResponse)
        }
        
        return UserModel(user: user)
    }
    
    func signInAnon() async throws {
        
        print("Sign In anon")
        
        do {
            let authDataResult = try await Auth.auth().signInAnonymously()
            try await UserDataService.shared.createNewUser(user: UserModel(user: authDataResult.user))
            
        }catch {
            print("Anon Sign in error: \(error)")
            throw error
            
        }
        
    }
    
    func createUserByEmail(email: String, password: String) async throws -> UserModel {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        return UserModel(user: result.user)
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
    func delete() async throws {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badURL)
        }
        
        try await user.delete()
    }
    
}


