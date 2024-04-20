//
//  SettingsView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import SwiftUI
final class SettingsViewModel: ObservableObject {
    
    
    func logOut(){
        
    }
}

struct SettingsView: View {
    var body: some View {
        List{
            Button("Log Out"){
                
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            
            SettingsView()
        }
    }
}
