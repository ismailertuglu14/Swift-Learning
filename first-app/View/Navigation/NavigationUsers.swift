//
//  NavigationUsers.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import SwiftUI

struct NavigationUsers: View {
    @State private var isPresented: Bool = false;
    var body: some View {
        NavigationView{
            List(NavigationUserModel.samples, id: \.id){
                data in
                NavigationLink(data.name){
                    UserViewDetail(user: data)
                }
               // Text(data.name)
            }.sheet(isPresented: $isPresented,onDismiss: {
                print("")
            }, content: {
                Button("Hello" ,action: {
                    isPresented.toggle() // true -> false
                })
            })
            .listStyle(GroupedListStyle()).navigationTitle(Text("Users"))
                .toolbar{
                    ToolbarItem{
                        Button("Open Sheet" ,action: {
                            isPresented.toggle() // false -> true
                        })
                    }
                }
        }
        
    }
}

struct NavigationUsers_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUsers()
    }
}
