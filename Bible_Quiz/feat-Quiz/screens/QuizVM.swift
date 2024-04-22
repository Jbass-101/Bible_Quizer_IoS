//
//  QuestionsScreenVM.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/02.
//

import Foundation


struct QuizUiState {
    var questions: [Quiz] = []
    var currentQuestion: Int = 0
    var currentScore: Int = 0
    var hasAnswered: Bool = false
    var showHint: Bool = false
    var hints: Int = 5
    var progress: Float = 60.0
}



@MainActor class QuizVM: ObservableObject {
    
    
    
    
    enum State {
        case idle
        case loading
        case success
        case failure(Error)
    }
    
    
    @Published private (set) var state = State.idle
    @Published private (set) var uiState: QuizUiState = QuizUiState()
    
    //private set means only vm can change the value
    @Published private (set) var questions = Quiz.mockData
    @Published private (set) var currentQuestion = 0
    
    
    
    func getAuthUser() -> UserModel? {
        state.self = State.loading
        do{
            state.self = State.success
            return try AuthDataService.shared.getAuthUser()
        }catch{
            state.self = State.failure(error)
            return nil
        }
    }
    
    func nextQuestion(){
        if(currentQuestion < 14){
            currentQuestion += 1
        }
    }
    
}
