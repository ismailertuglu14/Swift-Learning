//
//  User.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import Foundation

struct User: Codable{
    let page, perPage,total, totalPages: Int
    let data: [Datum]
    let support: Support
    
    enum CodingKeys: String, CodingKey{
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data,support
    }
}

struct Datum:Codable,Identifiable{
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
    
    enum CodingKeys: String, CodingKey{
        case id,email
        case firstName="first_name"
        case lastName="last_name"
        case avatar
    }
}

struct Support: Codable{
    let url: String
    let text: String
}
