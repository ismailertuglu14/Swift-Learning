//
//  TweetModel.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import Foundation

struct TweetModel: Identifiable {
    let id: UUID = UUID()
    let userName: String
    var body: String
    var likeCount: Int?
}

extension TweetModel{
    /// Sample tweet arrays
  static let tweets = [
        TweetModel(userName: "vb1", body: "hello1",likeCount: 10),
        TweetModel(userName: "vb2", body: "hello2",likeCount: 20),
        TweetModel(userName: "vb3", body: "hello3")
    ]
    static let fakeTweet =   TweetModel(userName: "vb1", body: "hello1",likeCount: 10)
}

