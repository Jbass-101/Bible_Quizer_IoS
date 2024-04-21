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
    
    func getAllQuestions() async throws -> Quiz{
        try await db.collection("Questions").document("Levels").collection("level_1").document("1").getDocument(as: Quiz.self)


    }
}
