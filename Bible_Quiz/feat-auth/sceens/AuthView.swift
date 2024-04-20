//
//  AuthView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        VStack{
            NavigationLink{
                SignInEmailView()
            } label: {
                Text("Sign In with Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
        }
        .padding()
        .navigationTitle("Sign In")
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AuthView()
        }
    }
}
