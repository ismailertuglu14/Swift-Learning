//
//  MarketHomeView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import SwiftUI

struct MarketHomeView: View {
    @StateObject private var marketViewModel = MarketViewModel()
    var body: some View {
        NavigationView{
            VStack{
                List(marketViewModel.items){
                    item in Text(item.name)
                }.navigationTitle("Market Items")
                NavigationLink(destination: MarketDetailView()){
                    Text("Add Item")
                }
            }
            
            
           //Altındaki sayfalarda bu itema erişebileceğiz
        }.environmentObject(marketViewModel)
 
    }
}

struct MarketHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MarketHomeView()
    }
}
