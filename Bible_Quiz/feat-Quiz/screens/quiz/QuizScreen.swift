//
//  QuizScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/14.
//


import SwiftUI

struct QuizScreen: View {
    
    var level: Int
    @StateObject private var vm: QuizVM = QuizVM()
    
    init(level: Int) {
        self.level = level
    }
    
    var body: some View {
        switch vm.state{
        case .idle: Text("Idle State. . . . . . level: \(level)")
            Color.clear.onAppear {
//            vm.getQuizByLevelS(Level: level)
        }
                
        case .loading:
            Text("Loading. . . . . .")
        case .success:
            
            
                Text("Success. . . . . .")
//            QuizScreenView(
//                uiState: vm.uiState,
//                onNext: {vm.goToNextQuestion()},
//                answerQuestion: {a, b in
//                    vm.answerQuestion(option: a, ans: b)
//                },
//                showHint: {vm.showHint()},
//                updateTimer: {vm.updateTimer()},
//                timer: vm.timer
//
//            )
            
            
            
        case .failure(_):
            Text("We have an error sir")
        }
    }
}

struct QuizScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScreen(level: 0)
    }
}

