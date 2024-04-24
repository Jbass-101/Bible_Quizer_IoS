//
//  QuizNavGraphView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/22.
//

import Foundation
import SwiftUI



public enum QuizDestination: Hashable {
    case level
    case quiz
    case score
//        case bedroom(owner: String)
}

final class QuizNavRouter: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case level
        case quiz
        case score
//        case bedroom(owner: String)
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
        
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}


struct QuizNavGraph: View {
    
    
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack{
//            QuizScreen(path: $path)
            LevelScreen()
                .navigationDestination(for: QuizDestination.self){ quizDestination in
                    switch quizDestination{
                    case .score : Text("Score Screen")
                    case.level : LevelScreen()
                    case.quiz : Text("Quiz Screen")
                    }
                    
                }
        }
        
        
            
    }
}

struct QuizNavGraph_Previews: PreviewProvider {
    static var previews: some View {
        QuizNavGraph(path: .constant(NavigationPath()))
    }
}
