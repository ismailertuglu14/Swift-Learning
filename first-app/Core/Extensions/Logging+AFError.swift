//
//  Logging+AFError.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {
    private static let logger = Logger(label: "")
    func showError(){
        AFError.logger.error("\(String(describing: errorDescription?.description))") 
    }
}
