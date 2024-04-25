//
//  QuizScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/14.
//


import SwiftUI

struct QuizScreen: View {
    
    var quizLevel: Int
    
    @StateObject private var vm: QuizVM = QuizVM()
    
    
    
    var body: some View {
        
        ZStack{
            
            
            switch vm.state{
                
            case .loading:
                BibleQuizLoading()
                    .onAppear{
                        Task{
                            await vm.getQuestions(level:quizLevel)
                        }
                    }
            case .success:
//                Text(vm.uiState.questions.description)
                QuizScreenContents(
                    uiState: vm.uiState,
                    onNext: {vm.nextQuestion()},
                answerQuestion: {a, b in},
                    showHint: {}
//                    ,
//                    timer: Timer.publish(every: 1, on: .main, in: .common).autoconnect()
                )

            case .failure(let errorString):
                BibleQuizError(errorString: errorString)
            }
        }
        .navigationTitle("Quiz Root View")
        
        
        
        
        
//        List {
//            Button("Quiz"){
//                path.append(QuizDestination.quiz)
//            }
//            NavigationLink("Quiz", value: QuizDestination.quiz)
//            NavigationLink("Levels", value: QuizDestination.level)
//            NavigationLink("Score", value: QuizDestination.score)
//        }
        
        
    }
}

struct QuizScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScreen(quizLevel: 1)
    }
}

