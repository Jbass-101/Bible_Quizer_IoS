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
    var mainError: AppError? = nil
    
    
    func getCurrentUser() throws {
        print("Get Current User: ")
        do {
            
            let user = try  AuthDataService.shared.getAuthUser()
            print("Current User: \(user)")
        }catch{
            self.mainError = AppError(errorString: error.localizedDescription)
            print("Get user error: \(error)")
        }
        
    }
    
    
    
    func createNewUser()async throws {
        print("Creating a new random User")
        try await AuthDataService.shared.signInAnon()
        
    }
    
    func deleteUser()async throws {
        print("Deleting this random User")
       try await AuthDataService.shared.delete()
    }
    
    
    func getUserData() async throws {
        print("Getting User Data")
        let result = try await QuizDataService.shared.getAllQuestions(level: 1)
        print("This is the result: \(result)")
        
    }
    
}
