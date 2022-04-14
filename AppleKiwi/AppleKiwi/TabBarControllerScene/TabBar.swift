//
//  TabBar.swift
//  AppleKiwi
//
//  Created by 이창형 on 2022/04/11.
//

import SwiftUI

extension Color {
    static let tabColor = Color("tab bar brown")
}


struct TabBar: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
           MainList()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }.tag(0)

            VStack(){
                Image("workerkiwi")
                    .resizable()
                    .scaledToFit()
                    .frame(width:370)
                
            }.tabItem{
                Image(systemName: "book")
                Text("도감")
            }.tag(1)
            
            MyPageView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("마이페이지")
                }.tag(2)
                
        }
        .accentColor(.tabColor)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
