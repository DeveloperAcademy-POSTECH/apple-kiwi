//
//  MainList.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/08.
//

import SwiftUI




struct MainList : View {
    @State var text : String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   // @StateObject var users = AllUsers()

    
    @State var users: [User] = [User(name: "Leeo", content: "LeeoContent"),
                                User(name: "Lisa", content: "LisaContent"),
                                User(name: "Seven", content: "SevenContent"),
                                User(name: "Coo", content: "CooContent")]


    
  
    
    
    var body :some View{
        
        NavigationView{
            VStack{
                
                //검색창에서
                searchBar(text: self.$text)
                VStack {
                  //  List {
                    /*
                    Section(header: Text("최신리스트")){
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(users, id: \.id) {user in
                                    NavigationLink(destination: Text(" \(user.name)")) {
                                        Circle()
                                            .fill(Color.blue)
                                            .frame(width: 50, height:50)
                                    }
                                }
                            }
                        }
                    }
                    */
                    List{
                    ForEach(users.indices)
                    { index in
                               NavigationLink(destination: ReadWikiView(user: self.$users[index])){
                                  Text("\(users[index].name)")
                               }
                           }
                    }
                    /*
                        List(users.indices) { index in
                                   NavigationLink(destination: ReadWikiView(user: self.$users[index])){
                                      Text("dfds")
                                   }
                               }
                      */
                        /*
                        Section(header: Text("전체리스트"))
                        {
                            ForEach(users.filter({"\($0)".contains(self.text) || self.text.isEmpty}), id: \.id) {  user in
                                NavigationLink( destination: ReadWikiView(users: user))
                                {
                                    Text("(user.name)")
                                }
                            }
                        }
                        */
                        
                                      /*  Section(header: Text("전체리스트"))
                                        {
                                            ForEach(Array(users.Users.enumerated().filter({"\($0)".contains(self.text) || self.text.isEmpty})), id: \.1) { i, user in
                                                NavigationLink( destination: ReadWikiView(user:  $users.Users[i]))
                                                {
                                                    Text("\(user.name)")
                                                }
                                            }
                                        }*/
                                   // }.listStyle(.grouped)
                             
                                
                }
                            
              
                
            }.navigationBarHidden(true)
       }
      
    }
}

struct MainList_Previews: PreviewProvider {
    static var previews: some View {
        MainList()
    }
}
