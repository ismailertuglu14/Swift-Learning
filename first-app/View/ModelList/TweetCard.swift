//
//  TweetCard.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import SwiftUI

struct TweetCard: View {
    let tweet: TweetModel
    var body: some View {
        
        VStack(alignment: .leading) {
            Spacer()
            Text(tweet.userName).font(.title)
            Text("\(tweet.body)").font(.title3)
            if tweet.likeCount != nil {
                HStack {
                    Text("\(tweet.likeCount ?? 0)")
                    Image(systemName: "heart.circle.fill").foregroundColor(.pink)
                    Spacer()
                }
            }
            Spacer()
        }.padding(2).frame(height: 100,alignment: .top)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.red,lineWidth: 2)).padding(2)
        
    }
}

struct TweetCard_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard(tweet: TweetModel.fakeTweet).previewLayout(.sizeThatFits)
    }
}
