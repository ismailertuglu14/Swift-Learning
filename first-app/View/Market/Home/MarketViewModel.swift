//
//  File.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import Foundation

class MarketViewModel: ObservableObject{
    
    init(){
        items = MarketItem.items
    }
    
    @Published var items : [MarketItem]
        
  
    
}

//MARK: Market business
extension MarketViewModel: MarketUses{
    func addItem(item: MarketItem) {
        items.append(item)
    }
    
    func removeItem(id: UUID) -> Bool {
        guard let index = items.firstIndex(where: {item in item.id == id}) else {return false}
        items.remove(at: index);
        return true;
    }
    
    
}

protocol MarketUses {
    
    func addItem(item: MarketItem)
    func removeItem(id: UUID) -> Bool
    var items: [MarketItem] {get set}
    
}





