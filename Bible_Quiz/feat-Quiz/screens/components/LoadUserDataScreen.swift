//
//  LoadUserDataScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import SwiftUI


@MainActor
final class LoadDataVM: ObservableObject {
    
    @State private var loading: Bool = false
    
    func getUser() throws {
        
    }
}



struct LoadUserDataScreen: View {
    
    
    @StateObject private var vm = LoadDataVM()
    @State private var loading: Bool = false
    
    var body: some View {
        ZStack{
            Text("Loading data. . . . .")
            
        }
        .onAppear{
            let authUser = try? AuthDataService.shared.getAuthUser()
//            authUser == nil ? "" : ""
            self.loading = authUser == nil
        }
        .fullScreenCover(isPresented: $loading){
            Text("Ready")
        }
    }
}

struct LoadUserDataScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoadUserDataScreen()
    }
}
