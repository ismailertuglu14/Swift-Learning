//
//  UserViewModel.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import Foundation

class UserViewModel: ObservableObject{
    
    init(userService: IUserService){
        self.userService = userService
        //init metodu async olamaz ihçbir zaman o yüzden Task.detached kullandık.
        Task.detached{
            await self.fetchWholeItems()
        }
    }
    let userService: IUserService
    
    @Published var  user: User?
    
    func fetchWholeItems() async{
        user = await userService.fetchUsers()
    }
    
}
