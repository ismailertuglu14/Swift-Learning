//
//  MarketItem.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import Foundation

struct MarketItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    var price: Int
    
    //Struct içindeyse mutating yazmamız lazım yoksa hata verecek.
    mutating func updatePrice(value: Int?){
        guard let _value = value else{return}
        price = _value
    }
}

extension MarketItem{
    
    static let items = [
        MarketItem(name: "v1", price: 15),
        MarketItem(name: "v2", price: 30)
    ]
}
