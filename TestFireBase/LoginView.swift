//
//  LoginView.swift
//  TestFireBase
//
//  Created by Wendy Buhler on 8/12/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Username", text: $username)
                SecureField("password", text: $password)
                Button("Login") {
                    
                }
                NavigationLink("Create Account", destination: CreateAccount())
                    
            }
        }
    }
}

struct CreateAccount: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    
    var body: some View {
        Form {
            TextField("Username", text: $username)
            SecureField("password", text: $password)
            TextField("First Name", text: $firstName)
            TextField("Last Name", text: $lastName)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
