//
//  IQuestionsRepo.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/02.
//

import Foundation

protocol QuizRepo {
    
    func getAllQuestions () -> Void
    
    func getQuestionsByLevel(level: String) -> Void
    
}
