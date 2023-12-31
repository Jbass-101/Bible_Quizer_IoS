//
//  BibleQuizButton.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/12/31.
//

import SwiftUI

struct BibleQuizButton: View {
    
    var title: String
    var defaultWidth: CGFloat = 280
    var onClick: () -> Void
    
    
    var body: some View {
        Button{
            
            onClick()
            
        }label: {
            Text(title)
                .frame(width: CGFloat(defaultWidth),height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke()
                )
                .foregroundColor(Color("primary"))
        }
    }
}

struct BibleQuizButton_Previews: PreviewProvider {
    static var previews: some View {
        BibleQuizButton(title: "Bible Quiz Button", onClick: {})
    }
}
