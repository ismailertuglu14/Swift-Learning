//
//  NumberCaseWrapper.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import Foundation

 @propertyWrapper struct NumberCaseWrapper{
    var wrappedValue: String{
        didSet{
            self.wrappedValue = calculateValue(value: wrappedValue)
        }
    }
     
     init(wrappedValue: String){
         self.wrappedValue = Int(wrappedValue)?.description ?? ""

     }
     
     private func calculateValue(value: String) -> String {
         return Int(value)?.description ?? ""
     }
     
     
}
