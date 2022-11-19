//
//  Navigation+View.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import Foundation
import SwiftUI

extension View{
    func dismiss(){
        @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
        presentationMode.wrappedValue.dismiss()
    }
}
