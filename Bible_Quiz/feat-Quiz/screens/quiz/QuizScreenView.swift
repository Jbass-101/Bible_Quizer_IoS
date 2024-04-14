//
//  HomeScreenView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/12/31.
//

import SwiftUI

struct QuizScreenView: View {
    
    @Environment(\.dismiss) private var popScreen
    
    
    @State private var showConfirmationDialog = false
    
    
    @ObservedObject var vm : QuizVM
    var question: Quiz
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                HStack{
                    Text("Score: 0")
                        .font(.body)
                    Spacer()
                    Text("Question: \(vm.currentQuestion + 1)/15 ")
                    Spacer()
                    Text("Hints : 5")
                }
                
                HStack{
                    Image(systemName: "clock")
                    Spacer()
                    ProgressView(value: 50, total: 100)
                    Spacer()
                    Text("60")
                    
                }
                
                
                Text(question.question)
                    .font(.title3)
                    .foregroundColor(Color("onContainer"))
                    .frame(maxWidth: .infinity, maxHeight: 250)
                    .background(Color("container"))
                    .cornerRadius(10)
                    
                
                
                
                
                Spacer()
                
                HStack{
                    
                    Button(action: {}){
                        Image(systemName: "questionmark.app")
                        Text("Show Hint")
                    }
                    .padding(10)
                    .background(Color("primary"))
                    .foregroundColor(Color("onPrimary"))
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    
                    
                    
                    Text(question.hint)
                    
                }
                
                Spacer()
                
                VStack(spacing: 25){
                    
                    ForEach(question.options, id :\.self){option in
                        
                        BibleQuizButton(title: option, onClick: {})
                        
                    }
                    
                    
                }
                
                Spacer()
                
                HStack{
                    
                    BibleQuizButton(title: "Quit", maxWidth: 150, onClick: {showConfirmationDialog.toggle()})
                        .alert("Quit", isPresented: $showConfirmationDialog, actions: {
                            Button(action: {}, label: {Text("Continue")})
                            Button(action: {popScreen()}, label: {Text("Quit Quiz")})
                            
                        }, message: {Text("Are you sure?")})
                    Spacer()
                    BibleQuizButton(
                        title: vm.currentQuestion < 14 ? "Next" : "Finish" , maxWidth: 150,
                        onClick: {vm.nextQuestion()})
                }
            }
            .padding()
            .navigationTitle("Question Screen")
            .toolbar(.hidden)
        }
        .navigationBarBackButtonHidden()
    }
}

struct QuestionScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScreenView(vm: QuizVM(),question: Quiz.sample)
    }
}
