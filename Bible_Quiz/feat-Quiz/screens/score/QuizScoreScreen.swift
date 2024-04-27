//
//  QuizScoreScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/27.
//

import SwiftUI

struct QuizScoreScreen: View {
    
    @Environment(\.dismiss) private var popScreen
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Previous Score")
                Text("5")
                    .font(
                        .largeTitle
                        .weight(.bold)
                    )
                Text("Your Score")
                Text("5")
                    .font(
                        .largeTitle
                        .weight(.bold)
                    )
            }
            Spacer()
            
            VStack{
                Text("Sore at least 9 to unlock the next level")
            }
            Spacer()
            
            VStack {
                BibleQuizButton(title: "Retry Level") {
                    popScreen()
                }
                BibleQuizButton(title: "Select Level") {
                    popScreen()
                }
                BibleQuizButton(title: "Home") {
                    popScreen()
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct QuizScoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScoreScreen()
    }
}
