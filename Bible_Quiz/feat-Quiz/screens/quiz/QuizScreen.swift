//
//  QuizScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/14.
//


import SwiftUI

struct QuizScreen: View {
    
    var quizLevel: Int
    var previousScore: Int
    
    @StateObject private var vm: QuizVM = QuizVM()
    
    
    
    var body: some View {
        
        ZStack{
    
            switch vm.state{
                
            case .loading:
                BibleQuizLoading()
                    .onAppear{
                        Task{
                            await vm.getQuestions(level:quizLevel,previousScore: previousScore)
                        }
                    }
            case .success:
                QuizScreenContents(
                    uiState: vm.uiState,
                    onNext: {vm.nextQuestion()},
                    showHint: {vm.showHint()},
                    onAnswer: {i in vm.onAnswer(isCorrect: i)},
                    onTick: {vm.onQuizTick()}
                )

            case .failure(let errorString):
                BibleQuizError(errorString: errorString)
            }
        }
        .navigationBarBackButtonHidden()
        
    }
}

struct QuizScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScreen(quizLevel: 1,previousScore: 6)
    }
}

