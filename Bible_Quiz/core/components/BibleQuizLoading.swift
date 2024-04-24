//
//  BibleQuizLoading.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/24.
//

import SwiftUI

struct BibleQuizLoading: View {
    var body: some View {
        
        ProgressView()
            .tint(.white)
            .scaleEffect(3)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray)
            .opacity(0.5)
    }
}

struct BibleQuizLoading_Previews: PreviewProvider {
    static var previews: some View {
        BibleQuizLoading()
    }
}
