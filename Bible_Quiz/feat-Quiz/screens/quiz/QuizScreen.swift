//
//  QuizScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/14.
//


import SwiftUI

struct QuizScreen: View {
    
    @Binding var path: NavigationPath
    @EnvironmentObject var router: QuizNavRouter
    @StateObject private var vm: QuizVM = QuizVM()
    @State private var currentUser: UserModel?
    
//    init(level: Int) {
//        self.level = level
//    }
    
    var body: some View {
        
        VStack{
            switch vm.state{
            case .idle: Text("Idle State. . . . . . ")
                Color.clear.onAppear {
                    currentUser.self = vm.getAuthUser()
            }

            case .loading:
                Text("Loading. . . . . .")
            case .success:
                
//                Text("Success. . . . . .")
                Color.clear.onAppear {
                    path.append(QuizDestination.level)
            }



            case .failure(_):
                Text("We have an error sir")
            }
        }
        .navigationTitle("Quiz Root View")
        
        
        
        
        
//        List {
//            Button("Quiz"){
//                path.append(QuizDestination.quiz)
//            }
//            NavigationLink("Quiz", value: QuizDestination.quiz)
//            NavigationLink("Levels", value: QuizDestination.level)
//            NavigationLink("Score", value: QuizDestination.score)
//        }
        
        
    }
}

struct QuizScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScreen(path: .constant(NavigationPath()))
    }
}

