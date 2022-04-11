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
    var body: some View {
        TabView {
           MainList()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }

            VStack(){
                Text("준비중 !!").font(.title)
                Image("test")
                    .resizable()
                    .scaledToFit()
                    .frame(width:300)
                
            }.tabItem{
                Image(systemName: "book")
                Text("도감")
            }
            
            MyPageView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("마이페이지")
                }
                
        }
        .accentColor(.tabColor)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
