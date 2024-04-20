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
