//
//  QuestionLevelSelectScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI

struct LevelScreen: View {
    
    @Environment(\.dismiss) private var popScreen
    @StateObject private var vm = QuizVM()
    
    @State private var btnDisabled = false
    
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            VStack {
                ScrollView{
                    LazyVGrid(columns: columns){
                        ForEach(0..<20){ level in
                            
                            NavigationLink(destination: QuizScreen(level: level), label: {LevelSelectButton(level: level, disabled: false) })
                        }
                    }
                }
                
                Button(action: {self.btnDisabled.toggle()}, label: {
                    Text("Toggle Disable")
                })
                
                NavigationLink(destination: QuizScreenView(vm: vm,question: vm.questions[vm.currentQuestion]), label: {Text("Go to Questions")})
                
                BibleQuizButton(title: "Home", onClick: {
                    popScreen()
                })
            }
            .padding()
        .navigationTitle("Select A Level")
        .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarBackButtonHidden()
    }
}

struct QuestionLevelSelectScreen_Previews: PreviewProvider {
    static var previews: some View {
        LevelScreen()
    }
}
