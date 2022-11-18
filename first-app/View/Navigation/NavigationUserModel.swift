//
//  NavigationUserModel.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import Foundation

struct NavigationUserModel: Identifiable{
    let id: UUID = UUID()
    let name: String
    
}

extension NavigationUserModel{
    
    /// Samples navigation user model
    static let samples: [NavigationUserModel] = [
        NavigationUserModel(name: "ismail"),
        NavigationUserModel(name: "ismail2"),
        NavigationUserModel(name: "ismail3"),
        NavigationUserModel(name: "ismail4"),
        NavigationUserModel(name: "ismail5"),
        NavigationUserModel(name: "ismail6"),
        NavigationUserModel(name: "ismail"),
        NavigationUserModel(name: "ismail2"),
        NavigationUserModel(name: "ismail3"),
        NavigationUserModel(name: "ismail4"),
        NavigationUserModel(name: "ismail5"),
        NavigationUserModel(name: "ismail"),
        NavigationUserModel(name: "ismail2"),
        NavigationUserModel(name: "ismail3"),
        NavigationUserModel(name: "ismail4"),
        NavigationUserModel(name: "ismail5"),
    ]
    
}
