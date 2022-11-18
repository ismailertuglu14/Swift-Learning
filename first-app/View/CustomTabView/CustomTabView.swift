//
//  CustomTabView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
       
        TabView{
            Text("Tab Content 1").tabItem { Image(systemName: "heart")
                Text("Tab level 1")
            }.tag(1)
            Text("Tab Content 2").tabItem {
                Image(systemName: "star")
                Text("Tab Label 2") }.tag(2)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
