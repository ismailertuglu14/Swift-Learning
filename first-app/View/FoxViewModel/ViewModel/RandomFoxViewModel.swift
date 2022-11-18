//
//  RandomFoxViewModel.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import Foundation

// BUnun değişiklrini miras alan swiftui classı haber alabilecek
class RandomFoxViewModel: ObservableObject{
    
    init(service:IFoxService){
        self.service = service;
        //fetchFox()
    }
    
    //Ekrana haber vereceksek @Published yaptık
    @Published var fox: RandomFoxModel?
    @Published var isCompleted: Bool?
    private let service: IFoxService;
    
    private func fetchFox(){
        service.fetchItem(path: .floof) { (data, isCompleted) in
            self.isCompleted = isCompleted
            self.fox = data;
        }
    }
    
    func refreshView(){
        isCompleted = false;
        fetchFox()
    }
    
    
    
}
