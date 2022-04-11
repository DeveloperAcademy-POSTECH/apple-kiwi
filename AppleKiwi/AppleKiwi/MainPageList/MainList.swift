//
//  MainList.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/08.
//

import SwiftUI

struct MainList : View {
    @State var text : String = ""

    struct User: Identifiable {
        var id = UUID()
        var name: String
    }
    @State var Users = [User(name: "Leeo"),
                               User(name: "Lisa"),
                               User(name: "Sven"),
                        User(name: "Leeo"),
                        User(name: "Coo")
                     
    ]
    
    
    var body :some View{
  

      
        NavigationView{
            VStack{
                
                //검색창에서
                searchBar(text: self.$text)
                
                List {
                    
                    Section(header: Text("최신리스트")){
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(Users, id: \.id) {user in
                                    NavigationLink(destination: Text(" \(user.name)")) {
                                        Circle()
                                            .fill(Color.blue)
                                            .frame(width: 50, height:50)
                                    }
                                }
                            }
                        }
                    }
                    Section(header: Text("전체리스트")){
                        
                        ForEach(Users.filter({"\($0)".contains(self.text) || self.text.isEmpty}), id: \.id)
                        { i in
                            NavigationLink(destination: Text(" \(i.name)")) {
                                Text("\(i.name)")
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
