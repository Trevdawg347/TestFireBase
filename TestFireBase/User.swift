//
//  User.swift
//  TestFireBase
//
//  Created by Wendy Buhler on 8/12/21.
//

import Foundation

class User: ObservableObject {
    @Published var id = ""
    @Published var signedIn = Bool()
    @Published var name = ""
    @Published var username = ""
}
