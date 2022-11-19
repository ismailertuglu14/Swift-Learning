//
//  TimerView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI
//SubscribtionView gücünü de kullanacağız.
struct TimerView: View {
    
    @State private var timeText: String  = ""
    // UI da değişiklik yapacaksak main threadi seçiyoruz.
    private let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    @State private var color: Color = Color.red
    @State private var  value: Int = 0;
    var colorIsOdd : Bool{
        return value % 2 == 0
    }
    var body: some View {
        VStack {
            SubscriptionView(content: Text(timeText), publisher: timer, action: { time in
                //her Timer.publish(every: ...) saniyede bir buraya düşecek
                //         String(time.description) ile aynı
                timeText = String(describing: time)
                value += 1
                
                
            })
            
            
            
        }.background(colorIsOdd ? Color.red : Color.blue)

    }
    
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
