//
//  MainList.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/07.
//

import SwiftUI

struct MainList : View {
    @State var text : String = ""
 
    var body :some View{
  

      
        NavigationView{
            VStack{
                
                //검색창에서
                searchBar(text: self.$text)
                
                List {
                    Section(header: Text("최신리스트")){
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<10) {row in
                                    NavigationLink(destination: Text("Detail \(row)")) {
                                        Circle()
                                            .fill(Color.blue)
                                            .frame(width: 50, height:50)
                                    }
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("전체리스트")){
                        
                        ForEach((0..<20).filter({"\($0)".contains(self.text) || self.text.isEmpty}), id : \.self)
                        { i in
                            NavigationLink(destination: Text("Detail \(i)")) {
                                Text("Row \(i)")
                            }
                        }
                        
                    }
                    
                }.listStyle(.grouped)
                
                
            }.navigationBarHidden(true)
       }
      
    }
}

struct MainList_Previews: PreviewProvider {
    static var previews: some View {
        MainList()
    }
}
