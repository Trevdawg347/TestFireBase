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
    
    @State var username: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""

    
    var body: some View {
        Form {
            TextField("Username", text: $username)
            TextField("First Name", text: $firstName)
            TextField("Last Name", text: $lastName)
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button("Create Account") { }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(User())
    }
}
