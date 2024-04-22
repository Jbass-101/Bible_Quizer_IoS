//
//  MainNavGraph.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/22.
//

import Foundation
import SwiftUI

final class QuizNavGraph: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case level
        case quiz
        case score
//        case bedroom(owner: String)
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
