//
//  QuizDataService.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import Foundation
import FirebaseFirestore

final class QuizDataService {
    
    static let shared = QuizDataService()
    private init(){}
    
    private let db = Firestore.firestore()
    
    func getAllQuestions(level: Int) async throws -> [Quiz] {
        var questions : [Quiz] = []
        
        let snapshots = try await db.collection("Questions").document("Levels").collection("level_\(level + 1)").getDocuments()
        
        for document in snapshots.documents {
            questions.append(try document.data(as: Quiz.self))
        }
        
        for (i,_) in questions.enumerated(){
            questions[i].options = questions[i].options.shuffled()
        }
        
        return questions.shuffled()
    }
    
    func updateScore(level: Int, score: Int) async throws {
        let user = try  AuthDataService.shared.getAuthUser().id
        var userData = try await db.collection("Users").document(user).getDocument(as: UserModel.self).quizScore
        
        userData[level] = score
        
        try await db.collection("Users").document(user).updateData(["quizScore":userData])
    }
}
