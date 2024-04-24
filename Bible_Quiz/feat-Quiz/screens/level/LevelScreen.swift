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
            
            VStack {
                
                    ScrollView{
                        LazyVGrid(columns: columns){
                            
                            ForEach(0..<vm.levelUnlocked.count){ level in
                                
                                NavigationLink(destination: Text("Hello"), label: {LevelSelectButton(level: level, disabled: false) })
                            }
                            
                            
                            ForEach(vm.levelUnlocked.count..<20){ level in
                                
                                LevelSelectDisabled()
                            }
                            
                            
                        }
                    }
                    
                    Button(action: {self.btnDisabled.toggle()}, label: {
                        Text("Toggle Disable")
                    })
                    
    //                NavigationLink(destination: QuizScreenView(vm: vm,question: vm.questions[vm.currentQuestion]), label: {Text("Go to Questions")})
                    
                    BibleQuizButton(title: "Home", onClick: {
                        popScreen()
                    })
                }
                .padding()
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
