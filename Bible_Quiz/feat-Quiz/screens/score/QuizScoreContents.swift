//
//  QuizScoreScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/27.
//

import SwiftUI

struct QuizScoreContents: View {
    
    @Environment(\.dismiss) private var popScreen
    @EnvironmentObject var nav: QuizNavRouter
    
    var uiState: QuizUiState
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Previous Score")
                Text("\(uiState.previousScore)")
                    .font(
                        .largeTitle
                        .weight(.bold)
                    )
                Spacer()
                       .frame(height: 20)
                
                
                Text("Your Score")
                Text("\(uiState.currentScore)")
                    .font(
                        .largeTitle
                        .weight(.bold)
                    )
            }
            Spacer()
            
            VStack{
                Text(uiState.currentScore > 8
                     ? uiState.currentScore > uiState.previousScore && uiState.previousScore > 8
                        ? "New High Score"
                     : uiState.currentScore <= uiState.previousScore
                            ? "You can do better"
                            : "New Level Unlocked!"
                     : "Sore at least 9 to unlock the next level")
            }
            Spacer()
            
            VStack {
//                BibleQuizButton(title: "Retry Level") {
//                    popScreen()
//                }
                BibleQuizButton(title: "Select Level") {
                    nav.navigate(to: QuizDestination.level)
                }
                BibleQuizButton(title: "Home") {
                    nav.navigateToRoot()
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct QuizScoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScoreContents(uiState: QuizUiState( previousScore: 2, currentScore: 0
                
            )
        )
        QuizScoreContents(uiState: QuizUiState(previousScore: 8, currentScore: 9)
        )
        QuizScoreContents(uiState: QuizUiState(previousScore: 2, currentScore: 10)
        )
        QuizScoreContents(uiState: QuizUiState(previousScore: 10, currentScore: 10)
        )
        QuizScoreContents(uiState: QuizUiState(previousScore: 10, currentScore: 9)
        )
    }
}
