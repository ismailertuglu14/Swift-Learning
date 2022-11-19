//
//  PropertyWrapperView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct PropertyWrapperView: View {
    //OBservable hale getirdik
    @State var userWrapperModel: UserWrapperModel = UserWrapperModel(username: "ismail", lastname: "e",age: "veli")
    var body: some View {
        VStack{
            Text(userWrapperModel.fullName).font(.largeTitle)
            TextField("",text:$userWrapperModel.lastname)
            TextField("Number",text:$userWrapperModel.age)
        }
        
    }
}

struct PropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperView()
    }
}
 
