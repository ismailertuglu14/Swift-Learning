//
//  UpperCaseWrapper.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import Foundation

 
@propertyWrapper struct UpperCaseWrapper {
    var wrappedValue: String {
        //Degişken aldığında yakalayabniliyoruz
        didSet{
            wrappedValue = wrappedValue.uppercased()
        }
    }
    
    // Constructor
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
