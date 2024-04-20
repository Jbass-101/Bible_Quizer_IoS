//
//  SettingsView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import SwiftUI
final class SettingsViewModel: ObservableObject {
    
    
    func signOut() throws {
        try AuthDataService.shared.signOut()
    }
    
    func deleteAccount() async throws{
        try await AuthDataService.shared.delete()
    }
}

struct SettingsView: View {
    
    @StateObject private var vm = SettingsViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        List{
            Button("Log Out"){
                Task {
                    do{
                        try vm.signOut()
                        showSignInView = true
                    }catch{
                        print(error)
                    }
                }
            }
            
            Button(role: .destructive){
                Task {
                    do{
                        try await vm.deleteAccount()
                        showSignInView = true
                    }catch{
                        print(error)
                    }
                }
                
            }label: {
                Text("Delete Account")
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            
            SettingsView(showSignInView: .constant(false))
        }
    }
}
