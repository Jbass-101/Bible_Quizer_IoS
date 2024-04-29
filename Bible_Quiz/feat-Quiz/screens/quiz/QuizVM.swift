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
    var previousScore: Int = 0
    var currentScore: Int = 0
    var hasAnswered: Bool = false
    var showHint: Bool = false
    var hints: Int = 5
    var progress: Int = 60
    var currentLevel: Int = 0
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
    @Published private (set) var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    
    func getQuestions(level: Int, previousScore: Int) async {
        do{
            self.uiState.currentLevel = level
            self.uiState.previousScore = previousScore
            self.uiState.questions = try await QuizDataService.shared.getAllQuestions(level: level)
//            print("This is the result: \(self.uiState.questions)")
            self.state = .success
            
        }catch{
//            print("This is the error: \(error.localizedDescription)")
            self.state = .failure(error.localizedDescription)
        }
    }
    
    func updateScore()async {
        do{
            if(self.uiState.previousScore > self.uiState.currentScore){
                try await QuizDataService.shared.updateScore(level: self.uiState.currentLevel, score: self.uiState.currentScore)
            }
            
        }catch {
            self.state = .failure(error.localizedDescription)
            
        }
        
    }
    
    func nextQuestion(){
        if(self.uiState.currentQuestion < 14){
            self.uiState.currentQuestion += 1
            self.uiState.showHint = false
            self.uiState.hasAnswered = false
            self.uiState.progress = 60
            self.uiState.hasAnswered = false
        }
        
        if(self.uiState.currentQuestion >= 14){
            
            
        }
    }
    
    func showHint(){
        if(self.uiState.hints > 0 && self.uiState.showHint == false){
            self.uiState.hints -= 1
            self.uiState.showHint = true
        }
    }
    
    func onAnswer(isCorrect: Bool){
        self.uiState.hasAnswered = true
        self.uiState.showHint = true
        self.uiState.hasAnswered = true
        if(isCorrect){
            self.uiState.currentScore += 1
        }
        
    }
    
    func onQuizTick(){
        self.uiState.progress -= 1
        
    }
    
}
