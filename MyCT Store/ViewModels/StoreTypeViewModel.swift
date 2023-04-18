//
//  StoreTypeViewModel.swift
//  MyCT Store
//
//  Created by Prince Desai on 06/04/23.
//

import Foundation


struct StoreTypeViewModel {
    private let storeType: StoreType
    
    init(storeType: StoreType) {
        self.storeType = storeType
    }
    
    func getId() -> String { storeType.id }
    func getType() -> String { storeType.type }
    func getImageName() -> String {
        return Config.baseURLForImage + (storeType.image.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    }
}
