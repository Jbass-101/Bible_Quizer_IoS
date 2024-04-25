//
//  LevelSelectButton.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI


struct LevelSelectButton: View {
    
    var level: Int
    var score: Int
    var rating: Int {
        return Int(floor(Double((Float(score) / 15) * 5)))
    }
    
    var body: some View {
        VStack{
            Text("Level \(level + 1)")
                .foregroundColor(Color("onPrimary"))
                .frame(maxWidth: .infinity,minHeight:50)
                .background(Color("primary"))
                .cornerRadius(10)
            HStack{
                
                ForEach(0..<rating, id: \.self){ level in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color("star"))
                }
                
                ForEach(rating..<5, id: \.self){ level in
                    Image(systemName: "star.fill")
                        .foregroundColor(.gray)
                }
                
            }
            .offset(x: 0, y:-14)
        }
    }
}

struct LevelSelectButton_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectButton(level: 0, score: 7)
    }
}
