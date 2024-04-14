//
//  LevelSelectButton.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI

struct LevelSelectButton: View {
    
    var level: Int
    var disabled : Bool
    
    
    var body: some View {
        
        Text("Level \(level + 1)")
            .foregroundColor(Color("onPrimary"))
            .frame(maxWidth: .infinity,minHeight:50)
            .background(disabled ? .gray : Color("primary"))
            .cornerRadius(10)
    }
}

struct LevelSelectButton_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectButton(level: 0, disabled: false)
    }
}
