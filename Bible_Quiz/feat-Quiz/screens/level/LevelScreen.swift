//
//  QuestionLevelSelectScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI

struct LevelScreen: View {
    
    @Environment(\.dismiss) private var popScreen
    @StateObject private var vm = QuizLevelVM()
    
    var body: some View {
        
        ZStack {
            
            LevelScreenContents(score: vm.levelUnlocked)
                .disabled(vm.isLoading)
            
            .navigationBarBackButtonHidden()
            .navigationTitle("Select A Level")
        .navigationBarTitleDisplayMode(.inline)
            
            switch vm.state {
            case .loading :
                BibleQuizLoading()
                    .onAppear{
                        Task{
                            await vm.getUserData()
                        }
                    }
            case .success:
                EmptyView()
            case .failure(let errorString):
                BibleQuizError(errorString: errorString)
            }
        }
    }
}

struct QuestionLevelSelectScreen_Previews: PreviewProvider {
    static var previews: some View {
        LevelScreen()
    }
}
