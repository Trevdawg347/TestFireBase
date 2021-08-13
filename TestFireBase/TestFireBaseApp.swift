//
//  TestFireBaseApp.swift
//  TestFireBase
//
//  Created by Wendy Buhler on 8/12/21.
//

import SwiftUI
import Firebase

@main
struct TestFireBaseApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(User())
        }
    }
}
