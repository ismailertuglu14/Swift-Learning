//
//  TabGestureView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct TabGestureView: View {
    
    @State private var isTap: Bool = false
    var onTap:some Gesture {
        // Kaç defa basıldığında çalışacak?
        TapGesture(count:1).onEnded{ _ in
            self.isTap = !self.isTap
        }
    }
    
    var body: some View {
        RoundedRectangle(cornerSize: .init(width: 50, height: 50))
            .fill(isTap ? Color.red : Color.yellow)
            .frame(width: 200,height: 200,alignment: .center)
            .gesture(onTap)
    }
}

struct TabGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureView()
    }
}
