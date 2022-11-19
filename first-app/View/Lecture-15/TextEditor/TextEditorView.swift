//
//  TextEditingView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct TextEditorView: View {
    @State private var editorValue: String = "as"
    var body: some View {
        VStack{
            TextEditor(text: $editorValue).frame(width: 200,height: 200).lineLimit(3).padding().background(Color.yellow)
        }
       
    }
}

struct TextEditorViewPreviews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
