//
//  MarketDetailViewModel.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import Foundation

class MarketDetailViewModel : ObservableObject{
    
    @Published var name: String = ""
    @Published var count: String = ""
    
    func save() -> (Bool,MarketItem?){
        guard !name.isEmpty else {return (false,nil)}
        guard let value = Int(count) else { return (false,nil) }
        
        return (true,MarketItem(name: name, price: value));
    }
}
