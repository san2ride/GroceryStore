//
//  StoreItemsListView.swift
//  GroceryStoreFirebase
//
//  Created by don't touch me on 2/9/21.
//

import SwiftUI

struct StoreItemsListView: View {
    
    let store: StoreViewModel
    @StateObject private var storeItemListVM = StoreItemListViewModel()
    
    var body: some View {
        VStack {
            TextField("Enter item name", text: $storeItemListVM.groceryItemName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Save") {
                storeItemListVM.addItemsToStore(storeId: store.storeId)
            }
            
            List(store.items, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct StoreItemsListView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemsListView(store: StoreViewModel(store: Store(id: "007",
                                                              name: "HEB",
                                                              address: "0100 Victory Lane",
                                                              items: nil)))
            
    }
}
