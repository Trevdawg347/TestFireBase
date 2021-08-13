//
//  TestFireBaseApp.swift
//  TestFireBase
//
//  Created by Wendy Buhler on 8/12/21.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct TestFireBaseApp: App {
    
    @StateObject var user = User()
    
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .onAppear() {
                    if Auth.auth().currentUser != nil {
                        user.signedIn = true
                    }
                    Auth.auth().addStateDidChangeListener { auth, users in
                        if users != nil {
                            user.setUp()
                        }
                    }
                }
                .environmentObject(user)
        }
    }
}
