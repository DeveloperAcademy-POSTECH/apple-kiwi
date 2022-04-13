//
//  MainList.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/13.
//

import SwiftUI




struct MainList : View {
    @State var text : String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    // @StateObject var users = AllUsers()
    
    
    @State var users = User.sampleUsers
    
    
    var body :some View{
        
        NavigationView{
            VStack{
                // 검색창
                searchBar(text: self.$text)
                
                List {
                    // 최신 리스트
                    Section(header: Text("최신 리스트")) {
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(users.shuffled().indices) { index in
                                    NavigationLink(destination: ReadWikiView(user: self.$users[index])) {
                                        VStack {
                                        Image(users[index].picture ?? "잼민 키위")
                                            .resizable()
                                            .cornerRadius(20)
                                            .overlay(Circle().stroke(Color("light gray"), lineWidth: 1))
                                            .frame(width: 50, height:50)
                                        Text(users[index].name)
                                                .font(.caption2)
                                                .foregroundColor(Color.black)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    // 전체 리스트
                    Section(header: Text("전체 리스트")) {
                        ForEach(users.indices)
                        { index in
                            NavigationLink(destination: ReadWikiView(user: self.$users[index])) {
                                Text("\(users[index].name)")
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

