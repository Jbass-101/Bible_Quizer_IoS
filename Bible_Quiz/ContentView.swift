//
//  ContentView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2023/11/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView()
            
            
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct BackgroundView: View {
    
    var body: some View {
        ContainerRelativeShape()
            .fill(Color("background").gradient)
            .ignoresSafeArea()
    }
}

struct BibleQuizButton: View {
    
    var title: String
    var onClick: () -> Void
    
    var body: some View {
        Button{
            
            onClick()
            
        }label: {
            Text(title)
                .frame(width: 280,height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke()
                )
                .foregroundColor(Color("primary"))
        }
    }
}
