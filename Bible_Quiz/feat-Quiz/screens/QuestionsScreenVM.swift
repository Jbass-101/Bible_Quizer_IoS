//
//  QuestionsScreenVM.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/02.
//

import Foundation

@MainActor class QuestionScreenVM: ObservableObject {
    //private set means only vm can change the value
    @Published private (set) var questions = Question.mockData
    @Published private (set) var currentQuestion = 0
    
    
    
    func nextQuestion(){
        if(currentQuestion < 14){
            currentQuestion += 1
        }
    }
    
}
