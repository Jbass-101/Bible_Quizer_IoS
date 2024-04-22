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
    
    func getAllQuestions() async throws -> (quiz: [Quiz], error: (any Error)?){
        var questions : [Quiz] = []
        
        do{
            let snapshots = try await db.collection("Questions").document("Level").collection("level_1").getDocuments()
            
            for document in snapshots.documents {
                questions.append(try document.data(as: Quiz.self))
            }
            print("No Error Found??")
            return (quiz: questions.shuffled(), error: nil)
            
        }catch{
            print("This is an error!!!")
            
            return (quiz: [], error: error)
            
        }

    }
}
