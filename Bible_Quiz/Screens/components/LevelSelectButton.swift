//
//  LevelSelectButton.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI

struct LevelSelectButton: View {
    
    var title: String
    var maxWidth: CGFloat = 0
    var onClick: () -> Void
    
    
    var body: some View {
        Button{
            
            onClick()
            
        }label: {
            Text(title)
                .foregroundColor(Color("onBackground"))
                .frame(width: 100, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke()
                )
                .foregroundColor(Color("primary"))
        }
    }
}

struct LevelSelectButton_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectButton(title: "Level 1", onClick: {})
    }
}
