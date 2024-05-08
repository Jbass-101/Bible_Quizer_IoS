//
//  HomeScreenView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/12/31.
//

import SwiftUI

struct QuizScreenContents: View {
    
    @Environment(\.dismiss) private var popScreen
    @State private var showConfirmationDialog = false
    @State private var showScore = false
    
    
    var uiState: QuizUiState
    var onNext: () -> Void
    var showHint: () -> Void
    var onAnswer: (Bool) -> Void
    var onTick: () -> Void
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        let quiz = uiState.questions[uiState.currentQuestion]
        
            
            VStack{
                HStack{
                    Text("Score: \(uiState.currentScore)")
                        .font(.body)
                    Spacer()
                    Text("Question: \(uiState.currentQuestion + 1)/15 ")
                    Spacer()
                    Text("Hints : \(uiState.hints)")
                }
                
                HStack{
                    Image(systemName: "clock")
                    Spacer()
                    QuizProgressBar(progress: CGFloat(uiState.progress) / 60)
                    Spacer()
                    Text("\(uiState.progress)")
                    
                    
                }
                
                Text(quiz.question)
                    .padding()
                    .font(.title3)
                    .foregroundColor(Color("onContainer"))
                    .frame(maxWidth: .infinity, maxHeight: 250)
                    .background(Color("container"))
                    .cornerRadius(10)
                    
                Spacer()
                
                HStack{
                    
                    Button(action: {showHint()}){
                        Image(systemName: "questionmark.app")
                        Text("Show Hint")
                    }
                    .padding(10)
                    .background(Color("primary"))
                    .foregroundColor(Color("onPrimary"))
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    Text(quiz.hint)
                        .opacity(uiState.showHint == true ? 1 : 0)
                    
                }
                
                Spacer()
                
                VStack(spacing: 25){
                    
                    ForEach(quiz.options, id :\.self){option in
                        
                        QuizAnswerButton(option: option, answer: quiz.answer, hasAnswered: uiState.hasAnswered) { i in
                            onAnswer(i)
                            
                        }
                    }
                }
                
                Spacer()
                
                HStack{
                    
                    BibleQuizButton(title: "Quit", onClick: {showConfirmationDialog.toggle()})
                        .alert("Quit", isPresented: $showConfirmationDialog, actions: {
                            Button(action: {}, label: {Text("Continue")})
                            Button(action: {popScreen()}, label: {Text("Quit Quiz")})
                            
                        }, message: {Text("Are you sure?")})
                    Spacer()
                    BibleQuizButton(
                        title: uiState.currentQuestion < 14 ? "Next" : "Finish",
                        onClick:{ uiState.currentQuestion < 14 ? onNext() : showScore.toggle()}
                    )
                }
            }
            .padding()
            .navigationTitle("Question Screen")
            .toolbar(.hidden)
            .onReceive(timer){ timer in
                if uiState.progress > 0 && !showConfirmationDialog == true && uiState.hasAnswered == false  {
                   onTick()
                }
                
                if uiState.progress == 0 {
                    onAnswer(false)
                }
            }
        
        .navigationBarBackButtonHidden()
        .fullScreenCover(isPresented: $showScore){
            QuizScoreContents(uiState: uiState)
        }
    }
}

struct QuestionScreen_Previews: PreviewProvider {
    
    static var quiz: [Quiz] = Quiz.mockData
    
    static var quizUiState = QuizUiState(questions: quiz, currentQuestion: 0)
    static var previews: some View {
                QuizScreenContents(
                    uiState: quizUiState,
                    onNext: {},
                    showHint: {},
                    onAnswer:{i in},
                    onTick: {}
                )}
}
