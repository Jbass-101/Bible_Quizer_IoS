//
//  BibleQuizButtonText.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI

struct BibleQuizButtonText: View {
    
    var title: String
    
    
    var body: some View {
        
        Text(title)
            .foregroundColor(Color("onBackground"))
            .frame(maxWidth: .infinity ,maxHeight: 50)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
            )
            .foregroundColor(Color("primary"))
    }
}

struct BibleQuizButtonText_Previews: PreviewProvider {
    static var previews: some View {
        BibleQuizButtonText(title: "Button Text")
    }
}
