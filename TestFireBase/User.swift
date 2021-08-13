//
//  User.swift
//  TestFireBase
//
//  Created by Wendy Buhler on 8/12/21.
//

import Foundation
import Firebase
import FirebaseAuth

class User: ObservableObject {
    
    @Published var id = ""
    @Published var name = ""
    @Published var username = ""    
    @Published var signedIn = Bool()
    
    func signIn(email:String, password:String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error == nil && result != nil {
                self.setUp()
            }
        }
    }
    func createAccount(email:String, password:String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error == nil && result != nil {
                self.setUp()
            }
        }
    }
    func setUp() {
        
    }
}
