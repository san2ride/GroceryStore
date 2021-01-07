//
//  View+Extensions.swift
//  GroceryStoreFirebase
//
//  Created by Jason Sanchez on 1/7/21.
//

import Foundation
import SwiftUI

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
