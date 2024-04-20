//
//  SignInEmailView.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/20.
//

import SwiftUI

@MainActor
final class AuthViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signInWithEmail(){
        guard !email.isEmpty, !password.isEmpty else {
            print("No Email or password found")
            return
        }
        
        Task {
            do {
                let userData = try await AuthDataService.shared.createUserByEmail(email: email, password: password)
                print(userData)
            }catch{
                print("Error \(error)")
            }
        }
    }
}

struct SignInEmailView: View {
    
    @StateObject private var vm = AuthViewModel()
    var body: some View {
        VStack{
            TextField("Email", text: $vm.email)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            SecureField("Password", text: $vm.password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            Button{
                vm.signInWithEmail()
                
            }label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Sign In With Email")
    }
}

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            
                SignInEmailView()
        }
    }
}
