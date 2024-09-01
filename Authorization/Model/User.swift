//
//  User.swift
//  Authorization
//
//  Created by Anubhav Tomar on 26/08/24.
//

import SwiftUI

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        
        return ""
    }
}


extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Kobe Byrat", email: "test@gmail.com")
}
