//
//  SampleListView.swift
//  first-app
//
//  Created by İsmail Ertuğlu on 11.11.2022.
//

import SwiftUI
import Kingfisher

struct SampleListView: View {
    private let items: Array<String> = ["chevron.right","chevron.left","chevron.left","chevron.left"]
    var body: some View {
        List{
            Section(header: Text("Sample"),content:{
                HStack{
                    Image(systemName:"person.crop.circle")
                    Text("Profile")
                    Spacer()
                    Image(systemName:"chevron.right")
                    
                }
                Text("Hello")
                Text("Hello")
            })
            Section(header:Text("Sample 2"),content:{
                HStack{
                    Image(systemName:"person.crop.circle")
                    Text("Profile")
                    Spacer()
                    Image(systemName:"chevron.right")
                    
                }
                Text("Hlelo")
                Text("Hlelo")
                
                HStack{
                    ForEach(items,id:\.self){
                        (item) in Text(item)
                    }
                }
                
            })
            
        }
        
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
