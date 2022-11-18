//
//  ModelListView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack{
            Text("Hello, Worldd!")
            List(TweetModel.tweets){data in
               TweetCard(tweet: data)
            }.listStyle(.sidebar)
        }
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        ModelListView()
    }
}

/*
 
 Username
 Body
 Like ( if like doesn't exist, just wrap the content otherwise extend horizontally.)
 
 */
