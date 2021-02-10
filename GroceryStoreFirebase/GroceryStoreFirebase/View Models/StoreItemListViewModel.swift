//
//  StoreItemListViewModel.swift
//  GroceryStoreFirebase
//
//  Created by don't touch me on 2/9/21.
//

import Foundation

class StoreItemListViewModel: ObservableObject {
    private var firestoreManager: FirestoreManager
    var groceryItemName: String = ""
    @Published var store: StoreViewModel?
    
    init() {
        firestoreManager = FirestoreManager()
    }
    
    func addItemsToStore(storeId: String) {
        firestoreManager.updateStore(storeId: storeId,
                                     values: ["items": [groceryItemName]]) { result in
            switch result {
            case .success(let storeModel):
                if let model = storeModel {
                    DispatchQueue.main.async {
                        self.store = StoreViewModel(store: model)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
