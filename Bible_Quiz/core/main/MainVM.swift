//
//  MainVM.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/21.
//

import Foundation

@MainActor class MainVM: ObservableObject {
    
    
    enum State {
        case idle
        case loading
        case success
        case failure(Error)
    }
    
    
    @Published private (set) var state = State.idle
    
    
    func createNewUser()async throws {
        try await AuthDataService.shared.signInAnon()
        
    }
    
    func deleteUser()async throws {
       try await AuthDataService.shared.delete()
    }
    
    func getCurrentUser(){
        
    }
    
    func getUserData() async throws {
        print("Getting User Data")
        let result = try await QuizDataService.shared.getAllQuestions()
        print("This is the result: \(result)")
        
    }
    
}
