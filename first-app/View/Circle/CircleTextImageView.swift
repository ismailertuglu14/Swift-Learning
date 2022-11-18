//
//  CircleTextImageView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import SwiftUI
import Kingfisher

struct CircleTextImageView: View {
    let title : String
    let imageUrl : String
    var body: some View {
        VStack{
            KFImage(URL(string: imageUrl)!).fade(duration: 0.25).resizable().clipShape(Circle()).shadow(radius: 100)
            Text(title)
        }
    }
}

struct CircleTextImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextImageView(title: "Helo", imageUrl: "https://picsum.photos/200/300").frame(
            width: 200,height: 200,alignment: .center).previewLayout(.sizeThatFits)
    }
}
