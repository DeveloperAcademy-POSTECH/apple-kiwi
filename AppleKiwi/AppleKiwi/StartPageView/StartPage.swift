//
//  StartPage.swift
//  AppleKiwi
//
//  Created by 이효경 on 2022/04/11.
//

import SwiftUI

extension Color {
    static let navKiwi = Color("navigation bar kiwi")
    static let txtBrown = Color("txt brown")
}

struct StartPage: View {
    
    var body: some View {
        VStack(){
            Text("앱카데미 키위").foregroundColor(Color.navKiwi).font(.title)
            Image("normal kiwi").resizable().scaledToFit().frame(width:250)
            Text("시니어, 주니어 러너들에 대한 모든 것").foregroundColor(Color.txtBrown)
            Image("team logo").resizable().scaledToFit().frame(width:100).offset(x:140, y:180)
        }
        
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}

