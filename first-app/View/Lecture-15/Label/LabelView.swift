//
//  LabelView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack{
            Label("Heart1",systemImage: Hearts.heartFill.rawValue).labelStyle(DefaultLabelStyle()).foregroundColor(Color.blue)
            Label("Heart2",systemImage: Hearts.heartCircleFill.rawValue).labelStyle(IconOnlyLabelStyle()).foregroundColor(Color.blue)
            Label("Heart3",systemImage: Hearts.heartCircle.rawValue).labelStyle(TitleOnlyLabelStyle()).foregroundColor(Color.blue)
        }
    }
}

enum Hearts: String{
    case heartFill = "heart.fill"
    case heartCircle = "heart.circle"
    case heartCircleFill = "heart.circle.fill"
    
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
