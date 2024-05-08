//
//  MainNavGraph.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/23.
//

import SwiftUI


public enum MainDestination: Hashable {
    case quizGraph
    case settings
//        case bedroom(owner: String)
}

struct MainNavGraph: View {
    @State private var path = NavigationPath()
    @StateObject var navGraph = QuizNavRouter()
    
    
    var body: some View {
        NavigationStack (path: $navGraph.navPath){
            HomeScreenView()
                .navigationDestination(for: MainDestination.self){ mainDestination in
                    switch mainDestination{
                    case .quizGraph : QuizNavGraph()
                    case .settings : Text("Settings Screen")
                    }
                    
                }
        }
        .environmentObject(navGraph)
    }
}

struct MainNavGraph_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            MainNavGraph()
            
        }
    }
}




final class QuizNavRouter: ObservableObject {
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: any Hashable) {
        navPath.append(destination)
        
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
