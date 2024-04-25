//
//  BibleQuizError.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/24.
//

import SwiftUI


struct BibleQuizError: View {
    
    
    @Environment(\.dismiss) private var popScreen
    
    var errorString: String
//    var onDismiss: () -> Void
    
    var body: some View {
        VStack{
            Text(errorString)
                .font(.callout)
                .foregroundColor(.red)
            
            BibleQuizButton(title: "Home", onClick: {
                popScreen()
            })
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
//        .opacity(0.7)
    }
}

struct BibleQuizError_Previews: PreviewProvider {
    static var previews: some View {
        BibleQuizError(errorString: "This is the error String")
    }
}
