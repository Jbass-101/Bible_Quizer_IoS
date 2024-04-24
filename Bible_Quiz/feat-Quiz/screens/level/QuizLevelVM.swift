//
//  QuizLevelVM.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/24.
//

import Foundation


@MainActor  class QuizLevelVM: ObservableObject {
    
    enum State {
        case loading
        case success
        case failure(String)
    }
    

    
    @Published private (set) var state = State.loading
    @Published private (set) var isLoading = true
    @Published private (set) var userData: UserModel?
    
    func getUserData() async {
        do{
            let currentUser = try AuthDataService.shared.getAuthUser()
            let userData = try await UserDataService.shared.getUserData(userID: currentUser.id)
            
            print("This is the results: \(userData)")
            self.userData = userData
            self.state = State.success
            self.isLoading = false
            
        }catch{
            print("This is the error: \(error.localizedDescription)")
            self.state = State.failure(error.localizedDescription)
            
        }
    }
}
