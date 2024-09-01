//
//  AuthorizationApp.swift
//  Authorization
//
//  Created by Anubhav Tomar on 26/08/24.
//

import SwiftUI
import Firebase

@main
struct AuthorizationApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
