//
//  ContentView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/11/02.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        
            
            VStack{
                
                    Image("quizlogo")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                        .foregroundColor(Color("primary"))
                
                Spacer()
                
                VStack(spacing: 25){
                    
                    NavigationLink("Start", value: MainDestination.quiz)
                    
//                    NavigationLink(destination: QuizNavGraph()){
//                        BibleQuizButtonText(title: "Start")
//                    }

                    
                    BibleQuizButton(title: "Quit") {
                        print("Quit App")
                    }
                }
                
                Spacer()
                
                ExtraBrainsLogoImage()
                
            }
            .padding()
            .navigationTitle("Home Screen")
            .toolbar(.hidden)
        }
        
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}




struct ExtraBrainsLogoImage: View {
    var body: some View {
        Image("extrabrains")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .foregroundColor(Color("primary"))
    }
}
