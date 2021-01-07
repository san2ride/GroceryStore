//
//  GroceryStoreFirebaseApp.swift
//  GroceryStoreFirebase
//
//  Created by Jason Sanchez on 1/5/21.
//

import SwiftUI
import Firebase

@main
struct GroceryStoreFirebaseApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
