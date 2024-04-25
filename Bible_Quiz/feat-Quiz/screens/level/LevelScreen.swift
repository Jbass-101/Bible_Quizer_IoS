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
    
    @State private var btnDisabled = false
    @State private var isLoading = true
    
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
    
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
                BibleQuizError(errorString: errorString){
                    popScreen()
                }
            }
        }
    }
}

struct QuestionLevelSelectScreen_Previews: PreviewProvider {
    static var previews: some View {
        LevelScreen()
    }
}
