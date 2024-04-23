//
//  MainNavGraph.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/23.
//

import SwiftUI


public enum MainDestination: Hashable {
    case quiz
    case settings
//        case bedroom(owner: String)
}

struct MainNavGraph: View {
    @State private var path = NavigationPath()
    
    
    var body: some View {
        NavigationStack (path: $path){
            HomeScreenView()
                .navigationDestination(for: MainDestination.self){ mainDestination in
                    switch mainDestination{
                    case .quiz : QuizNavGraph(path: $path)
                    case .settings : Text("Settings Screen")
                    }
                    
                }
        }
    }
}

struct MainNavGraph_Previews: PreviewProvider {
    static var previews: some View {
        MainNavGraph()
    }
}
