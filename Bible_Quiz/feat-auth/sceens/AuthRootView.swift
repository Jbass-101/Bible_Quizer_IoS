//
//  AuthRootView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import SwiftUI

struct AuthRootView: View {
    
    @State private var showSignInView: Bool = false
    var body: some View {
        ZStack{
            NavigationStack{
                SettingsView(showSignInView: $showSignInView )
                
            }
        }
        .onAppear{
            let authUser = try? AuthDataService.shared.getAuthUser()
            self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView){
            NavigationStack {
                AuthView()
            }
        }
    }
}

struct AuthRootView_Previews: PreviewProvider {
    static var previews: some View {
        AuthRootView()
    }
}
