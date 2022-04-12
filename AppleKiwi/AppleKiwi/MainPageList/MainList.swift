//
//  MainList.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/08.
//

import SwiftUI

struct MainList : View {
    @State var text : String = ""
    
    @State var userOne = User.userOne
    @State var userTwo = User.userTwo
    @State var userThree = User.userThree
    @State var userFour = User.userFour

    var body :some View{
  

      
        NavigationView{
            VStack{
                
                //검색창에서
                searchBar(text: self.$text)
                
                List {
                    
                    /*Section(header: Text("최신리스트")){
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
                    }*/
                    Section(header: Text("전체리스트")){
                        NavigationLink(destination:ReadWikiView(user : $userOne)){
                            Text("Leeo")
                        }
                        NavigationLink(destination:ReadWikiView(user : $userTwo)){
                            Text("Lisa")
                        }
                        NavigationLink(destination:ReadWikiView(user : $userThree)){
                            Text("Seven")
                        }
                        NavigationLink(destination:ReadWikiView(user : $userFour)){
                            Text("Coo")
                        }
                       /* ForEach(users.filter({"\($0)".contains(self.text) || self.text.isEmpty}), id: \.id)
                        { user in
                            NavigationLink(destination: ReadWikiView(user: user)) {
                                Text("\(user.name)")
                            }
                        }*/
                        
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
