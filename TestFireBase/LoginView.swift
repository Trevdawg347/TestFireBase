//
//  LoginView.swift
//  TestFireBase
//
//  Created by Wendy Buhler on 8/12/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @EnvironmentObject var user: User
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                Button("Login") {user.signIn(email: email, password: password) }
                NavigationLink("Create Account", destination: CreateAccount())
            }
        }
    }
}

struct CreateAccount: View {
    
    @State var username: String = "Trev"
    @State var firstName: String = "Trevor"
    @State var lastName: String = "Buhler"
    @State var email: String = "Trevor@gmail.com"
    @State var password: String = "Jeremy12"
    @EnvironmentObject var user: User

    
    var body: some View {
        Form {
            TextField("Username", text: $username)
            TextField("First Name", text: $firstName)
            TextField("Last Name", text: $lastName)
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button("Create Account") { user.createAccount(email: email, password: password, name: "\(firstName) \(lastName)", userName: username)}
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(User())
    }
}
