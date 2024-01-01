//
//  HomeScreenView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/12/31.
//

import SwiftUI

struct QuestionScreenView: View {
    var body: some View {
        NavigationView {
            
            VStack{
                HStack{
                    Text("Score: 0")
                        .font(.body)
                    Spacer()
                    Text("Question: 1/15 ")
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
                
                
                Text("This is a sample question")
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
                    
                    
                    
                    
                    Text("This is the hint")
                    
                }
                
                Spacer()
                
                VStack(spacing: 25){
                    BibleQuizButton(title: "Answer 1", onClick: {})
                    BibleQuizButton(title: "Answer 2", onClick: {})
                    BibleQuizButton(title: "Answer 3", onClick: {})
                    BibleQuizButton(title: "Answer 4", onClick: {})
                }
                
                Spacer()
                
                HStack{
                    
                    BibleQuizButton(title: "Quit", maxWidth: 150, onClick: {})
                    Spacer()
                    BibleQuizButton(title: "Next", maxWidth: 150, onClick: {})
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
        QuestionScreenView()
    }
}
