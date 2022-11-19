//
//  MarketDetailView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import SwiftUI

struct MarketDetailView: View,BaseView {
    @StateObject private var marketDetailViewModel:MarketDetailViewModel = MarketDetailViewModel()
    @EnvironmentObject var marketViewModel: MarketViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            TextField("Name",text: $marketDetailViewModel.name)
            TextField("Count",text: $marketDetailViewModel.count)
            Button("Save"){
                saveItem()
            }
        }
    }
}

extension MarketDetailView{
    private func saveItem() {
        let result = marketDetailViewModel.save()
        guard result.0 == true else { return } 
        marketViewModel.addItem(item: result.1!)
        dismiss()
    }
    
    
}
protocol BaseView{
    
    var presentationMode: Binding<PresentationMode> { get }
    
    func dismiss()
    
}

extension BaseView where Self:View{
    
    func dismiss(){
        presentationMode.wrappedValue.dismiss()
    }
}



struct MarketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MarketDetailView()
    }
}
