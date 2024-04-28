//
//  QuizProgressBar.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/28.
//

import SwiftUI

struct QuizProgressBar: View {
    
    var progress: CGFloat
    
    
    var body: some View {
        ZStack(alignment: .leading) {
          Rectangle()
            .frame(width: 300, height: 5)
            .opacity(0.3)
            .foregroundColor(.gray)

          Rectangle()
            .frame(width: progress * 300, height: 5)
            .foregroundColor(.green)
            .animation(.easeInOut(duration: 1), value: progress)
            
        }
    }
}

struct QuizProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        QuizProgressBar(progress: 0.5)
    }
}
