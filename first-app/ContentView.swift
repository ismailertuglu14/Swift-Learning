//
//  ContentView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 3.11.2022.
//  randomfox.ca/floof/

import SwiftUI
import Kingfisher

struct IconFieldView: View{
    var iconName : String  = "hello"
    @State var textFieldvalue : String = ""
    var body : some View{
        VStack {
            TextField("Placeholder" ,text: $textFieldvalue)
            Text(textFieldvalue).font(.largeTitle).bold()
            Image(systemName: textFieldvalue.lowercased()).resizable().frame(width: 50, height: 50)
        }
    }
    
    
}

struct ContentView: View {
   
    
  
    private let imageUrl : String = "https://picsum.photos/200/300"
   
    
    var body: some View {
        CircleTextImageView(title: "My Custom Title", imageUrl: imageUrl).frame(width: 200,height: 200,alignment: .center)
      
    }
    
    fileprivate func s1_e3() -> some View{
        return VStack {
            
            VStack{
                Text("Hello 1")
                    .foregroundColor(.blue).font(.callout)
            }.frame(width: 200,height: 200,alignment: .center).background(Color(.yellow).shadow(radius:10))
            
            
            VStack{
                
                Image(systemName: "moon.fill").foregroundColor(.red)
                Text("Hello 2")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
    fileprivate func ders_2() ->some View{
        return VStack(alignment: .center){
            Rectangle().frame(width: 100,height: 100,alignment: .center)
            Circle().foregroundColor(.red).frame(height: 100,alignment: .center)
            Text("Sample1")
            Text("Sample2")
            Text("Sample3")
            Spacer()
            HStack(alignment:.center){
                
                RoundedRectangle(cornerRadius: 25 ).frame(height: 100, alignment: .center)
                ZStack{
                    Circle()
                    Text("Hello").font(.largeTitle).fontWeight(.heavy).foregroundColor(.red)
                }
                
            }.frame(height: 500,alignment: .center)
        }
    }
    /* Horizontal View */
    fileprivate func SampleHView() -> some View {
        return HStack{
            Text("ismail").padding()
            Spacer()
            Text("ismail").padding()
            Text("ismail").padding()
            Color.red
            Spacer().frame(width: 100)
        }.frame(height: 100)
    }
    fileprivate func SampleVView() -> some View {
        return VStack{
            Text("ismail").padding()
            Spacer()
            Text("ismail").padding()
            Text("ismail").padding()
            Color.red
            Spacer().frame(width: 100)
        }
    }
    fileprivate func SampleZView() -> some View {
        return ZStack{
            Color.red
            Text("ismail").padding()
            Spacer()
            Text("ismail123").padding().frame(alignment: .bottom)
            Text("ismail").padding()
       
       
        }.frame(height: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
