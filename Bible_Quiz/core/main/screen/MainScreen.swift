//
//  MainScreen.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/21.
//

import SwiftUI

struct MainScreen: View {
    
    @StateObject private var vm: MainVM = MainVM()
    
    var body: some View {
        NavigationStack{
            Text("Main VM......")
            
            Button("Delete User"){
                Task {
                    
                        try await vm.deleteUser()
                }
            }
            
            Button("Login User"){
                Task {
                    
                        try await vm.createNewUser()
                }
            }
            
            
            Button("Get User Data"){
                Task {
                    
                        try await vm.getUserData()
                }
            }
            
        }
        .onAppear{
            Task {
                try await vm.createNewUser()
            }
            
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
