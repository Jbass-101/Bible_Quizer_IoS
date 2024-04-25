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
        case loading
        case success
        case failure(String)
    }
    
    
    @Published private (set) var state = State.loading
    @Published private (set) var uiState: QuizUiState = QuizUiState()
    
    //private set means only vm can change the value
    @Published private (set) var questions = Quiz.mockData
    @Published private (set) var currentQuestion = 0
    
    func getQuestions(level: Int) async {
        do{
            
            self.uiState.questions = try await QuizDataService.shared.getAllQuestions(level: level)
            print("This is the result: \(self.uiState.questions)")
            self.state = .success
            
        }catch{
            print("This is the error: \(error.localizedDescription)")
            self.state = .failure(error.localizedDescription)
        }
        
    }
    
    func nextQuestion(){
        if(currentQuestion < 14){
            currentQuestion += 1
        }
    }
    
}
