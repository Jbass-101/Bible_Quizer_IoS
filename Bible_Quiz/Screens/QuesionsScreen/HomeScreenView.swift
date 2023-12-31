//
//  HomeScreenView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/12/31.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Question: 1/15 ")
                
                Text("Time : 60")
            }
            
            HStack{
                
                Image(systemName: "clock")
                
                ProgressView(value: 50, total: 100)
                
            }
            
            
            Text("This is a sample question")
                .frame(width: .infinity, height: 300)
                .background(Color(.blue))
            
            HStack{
                Text("This is the hint")
                Button{
                    
                }label: {
                    VStack{
                        
                            Image(systemName: "questionmark.app")}
                    Text("Show Hint")
                    }
            }
            
            Spacer()
            
            VStack(spacing: 10){
                BibleQuizButton(title: "Answer 1", onClick: {})
                BibleQuizButton(title: "Answer 2", onClick: {})
                BibleQuizButton(title: "Answer 3", onClick: {})
                BibleQuizButton(title: "Answer 4", onClick: {})
            }
            
            Spacer()
            
            HStack{
                
                    BibleQuizButton(title: "Answer 1", defaultWidth: 150, onClick: {})
                BibleQuizButton(title: "Answer 1", defaultWidth: 150, onClick: {})
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
