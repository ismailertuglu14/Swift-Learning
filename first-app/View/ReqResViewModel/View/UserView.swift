//
//  UserView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import SwiftUI
import ActivityIndicatorView
import Kingfisher
struct UserView: View {
    @StateObject var userViewModel = UserViewModel(userService: UserService());
    var body: some View {
        if userViewModel.user == nil {
            LoadingView()
        }else{
            NavigationView{
                List(userViewModel.user?.data ?? []){
                   
                    UserExtractedView(model: $0)
                    UserExtractedView(model: $0)
                }.navigationTitle("Users")
            }
          
        }
       
        
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct UserExtractedView: View {
    let model: Datum
    var body: some View {
        HStack{
            KFImage(URL(string: model.avatar)).resizable().frame(width: 80, height: 80)
            Text(model.firstName)
            Text(model.lastName)
        }
    }
}
