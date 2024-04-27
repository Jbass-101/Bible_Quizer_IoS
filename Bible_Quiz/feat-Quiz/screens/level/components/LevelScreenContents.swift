//
//  LevelScreenContents.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/25.
//

import SwiftUI


struct LevelScreenContents: View {
    var score: [Int]
    
    
    @Environment(\.dismiss) private var popScreen
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        VStack {
            
                ScrollView{
                    LazyVGrid(columns: columns){
                        
                        ForEach(0..<score.count, id: \.self){ level in
                            
                            NavigationLink(destination: QuizScreen(quizLevel: level, previousScore: score[level]), label: {LevelSelectButton(level: level, score: score[level]) })
                        }
                        ForEach(score.count..<20, id: \.self){ level in
                            
                            LevelSelectDisabled()
                        }
                    }
                }
                
                BibleQuizButton(title: "Home", onClick: {
                    popScreen()
                })
            }
            .padding()
    }
}

struct LevelScreenContents_Previews: PreviewProvider {
    static var previews: some View {
        LevelScreenContents(score: [5,4,3])
    }
}
