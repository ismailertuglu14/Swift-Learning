//
//  UserViewDetail.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import SwiftUI

struct UserViewDetail: View {
    let user : NavigationUserModel
    var body: some View {
        Text(user.name).font(.largeTitle)
    }
}

struct UserViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserViewDetail(user: NavigationUserModel.samples.first!)
    }
}
