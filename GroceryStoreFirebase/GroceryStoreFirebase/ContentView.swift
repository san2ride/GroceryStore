//
//  ContentView.swift
//  GroceryStoreFirebase
//
//  Created by Jason Sanchez on 1/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        
        .sheet(isPresented: $isPresented, content: {
            AddStoreView()
        })
        .navigationBarItems(trailing: Button(action: {
            isPresented = true
        }, label: {
            Image(systemName: "plus")
        }))
        .navigationTitle("Grocery Store")
        .embedInNavigationView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
