//
//  TwitterMockApp.swift
//  TwitterMock
//
//  Created by seydoux on 2022/01/29.
//

import SwiftUI
import Firebase

@main
struct TwitterMockApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                ContentView()
                LoginView()
            }
        }
    }
}
