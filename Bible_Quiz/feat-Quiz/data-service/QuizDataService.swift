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
        
        let snapshots = try await db.collection("Questions").document("Level").collection("level_\(level + 1)").getDocuments()
        
        for document in snapshots.documents {
            questions.append(try document.data(as: Quiz.self))
        }
        return questions.shuffled()
    }
}
