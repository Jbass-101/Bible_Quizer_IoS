//
//  QuizNavGraphView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/22.
//

import Foundation
import SwiftUI

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
    
    @ObservedObject var router = QuizNavRouter()
    
    var body: some View {
        NavigationStack(path: $router.navPath){
            LevelScreen()
                .navigationDestination(for: QuizNavRouter.Destination.self){ destination in
                    switch destination {
                    case .quiz:
                        VStack{
                            
                            Text("Quiz Screen")
                            Button("Navigate to quiz screen"){
                                router.navigate(to: .quiz)
                            }
                            
                        }
                    case .score:
                        VStack{
                            
                            Text("Score Screen")
                            Button("Navigate to quiz screen"){
                                router.navigate(to: .score)
                            }
                            
                        }
                    case .level:
                        Text("Level")
                    }
                    
                }
            
        }.environmentObject(router)
    }
}

struct QuizNavGraph_Previews: PreviewProvider {
    static var previews: some View {
        QuizNavGraph()
    }
}
