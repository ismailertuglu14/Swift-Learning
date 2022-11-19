//
//  UserWrapperModel.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import Foundation

// lastname is always bigger
struct UserWrapperModel{
    var username: String
    @UpperCaseWrapper var lastname: String
    @NumberCaseWrapper var age: String
    
    var fullName: String {
        return "\(username) \(lastname) \(age)" 
    }
    
    
}
