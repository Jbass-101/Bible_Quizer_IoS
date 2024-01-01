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
            
            
            Text("B")
                .font(Font.custom("LoveYaLikeASister-Regular", size: 200))
                .foregroundColor(Color("primary"))
            
            Spacer()
            
            VStack(spacing: 25){
                
                BibleQuizButton(title: "Start") {
                    print("Start Button")
                }
                
                BibleQuizButton(title: "Quit") {
                    print("Quit App")
                }
            }
            
            Spacer()
            
            Image("extrabrains")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .foregroundColor(Color("primary"))
            
        }
        
        
        
        
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}



