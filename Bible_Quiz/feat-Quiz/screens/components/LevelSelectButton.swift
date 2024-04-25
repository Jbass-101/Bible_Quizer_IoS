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
        VStack{
            Text("Level \(level + 1)")
                .foregroundColor(Color("onPrimary"))
                .frame(maxWidth: .infinity,minHeight:50)
                .background(Color("primary"))
                .cornerRadius(10)
            HStack{
                
                ForEach(0..<3, id: \.self){ level in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color("star"))
                }
                
                ForEach(3..<5, id: \.self){ level in
                    Image(systemName: "star")
                        .foregroundColor(Color("star"))
                }
                
            }
            .offset(x: 0, y:-14)
        }
    }
}

struct LevelSelectButton_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectButton(level: 0, disabled: false)
    }
}
