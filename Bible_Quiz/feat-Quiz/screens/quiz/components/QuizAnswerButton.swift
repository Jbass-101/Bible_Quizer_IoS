//
//  QuizAnswerButton.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/26.
//

import SwiftUI

struct QuizAnswerButton: View {
    
    var option: String
    var answer: String
    var hasAnswered: Bool
    var onAnswer: (Bool) -> Void
    var isCorrect: Bool {
        return option == answer
    }
    
    
    var body: some View {
        Button(action: {onAnswer(isCorrect)}
               , label: {
                HStack {
                    Image(systemName: isCorrect == true ? "checkmark.circle" : "x.circle")
                        .opacity(hasAnswered == true ? 1 : 0)
                    Spacer()
                    Text(option)
                    Spacer()
                }
                .foregroundColor(Color(hasAnswered == true ? (isCorrect == true ? "correctAnswer" : "incorrectAnswer" ) : "onBackground" ))
                .padding()
                .frame(maxWidth: .infinity,minHeight:50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke())
                .foregroundColor(Color(hasAnswered == true ? (isCorrect == true ? "correctAnswer" : "incorrectAnswer" ) : "primary" ))
        }
        )
        .disabled(hasAnswered)
    }
}

struct QuizAnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        QuizAnswerButton(option: "Normal Option", answer: "Correct Answer", hasAnswered: false){ answer in}
        QuizAnswerButton(option: "Correct Answer", answer: "Correct Answer", hasAnswered: true){answer in}
        QuizAnswerButton(option: "Incorrect Answer", answer: "Correct Answer", hasAnswered: true){answer in}
    }
}
