//
//  QuizScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/14.
//


import SwiftUI

struct QuizScreen: View {
    
    @EnvironmentObject var router: QuizNavRouter
    @StateObject private var vm: QuizVM = QuizVM()
    @State private var currentUser: UserModel?
    
//    init(level: Int) {
//        self.level = level
//    }
    
    var body: some View {
        switch vm.state{
        case .idle: Text("Idle State. . . . . . ")
            Color.clear.onAppear {
                currentUser.self = vm.getAuthUser()
        }
                
        case .loading:
            Text("Loading. . . . . .")
        case .success:
            Text("Success. . . . . .")
            Color.clear.onAppear {
                router.navigate(to: .level)
        }
            
            
            
        case .failure(_):
            Text("We have an error sir")
        }
    }
}

struct QuizScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScreen()
    }
}

