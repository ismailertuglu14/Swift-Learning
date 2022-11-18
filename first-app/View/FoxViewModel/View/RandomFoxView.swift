//
//  RandomFoxView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 18.11.2022.
//

import SwiftUI
import Kingfisher
import ActivityIndicatorView
struct RandomFoxView: View {
    private let title: String = "My Fox!";
    //Dinleyici obje yaratıyosak variable olarak tanımlayacağız
    // Ekran kullanacaksa StateObject vermemiz şart
    @StateObject private var foxViewModel: RandomFoxViewModel = RandomFoxViewModel(service: RandomFoxService())
    var body: some View {
        VStack {
            HStack {
                Text(title).font(.largeTitle)
                Spacer()
                Button("Refresh"){
                    foxViewModel.refreshView();
                }
            }.padding(.all)
            
            if foxViewModel.isCompleted ?? false {
                ExtractedView(imageUrl: foxViewModel.fox?.image)
               
            }else{
                
              LoadingView()
            }
            
     Spacer()
            
        }
        
    }
}
struct LoadingView: View{
    var body: some View{
        VStack{
            Spacer()
            ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
            Spacer()
        }
    }
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}

struct ExtractedView: View {
    let imageUrl: String?
    var body: some View {
        GeometryReader { geometry in
            KFImage(URL(string:imageUrl ?? "")).resizable()
                .frame(height: geometry.size.height * 0.8)
        }
    }
}
