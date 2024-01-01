//
//  QuestionLevelSelectScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/01/01.
//

import SwiftUI

struct QuestionLevelSelectScreen: View {
    
    @Environment(\.dismiss) private var popScreen
    
    @State private var btnDisabled = false
    
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            VStack {
                ScrollView{
                    LazyVGrid(columns: columns){
                        ForEach(1..<21){ level in
                            
                            
                            Button(action : {}){
                                Text("Level \(level)")
                                    .foregroundColor(Color("onPrimary"))
                                    .frame(width: 160, height: 50)
                                    .background(btnDisabled ? .gray : Color("primary"))
                                    .cornerRadius(10)
                            }
                            .disabled(btnDisabled)
                            
                            
                        }
                    }
                }
                
                Button(action: {self.btnDisabled.toggle()}, label: {
                    Text("Toggle Disable")
                })
                
                NavigationLink(destination: QuestionScreenView(question: Question.sample), label: {Text("Go to Questions")})
                
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
        QuestionLevelSelectScreen()
    }
}
