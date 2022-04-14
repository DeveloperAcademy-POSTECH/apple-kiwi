//
//  SplashScreenView.swift
//  AppleKiwi
//
//  Created by 이효경 on 2022/04/11.
//

import SwiftUI



extension Color {
    static let navKiwi = Color("navigation bar kiwi")
    static let txtBrown = Color("txt brown")
}


struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
                    ContentView()
                }
        else{
        VStack(){
            Spacer()
            Text("앱카데미 키위").foregroundColor(Color.navKiwi).font(.largeTitle .bold())
            Image("normal kiwi").resizable().scaledToFit().frame(width:250)
            Text("시니어, 주니어 러너들에 대한 모든 것").foregroundColor(Color.txtBrown)
            Spacer()
            HStack{
                Spacer()
                Image("teamlogo").resizable().scaledToFit().frame(width:100)
            }
        }.ignoresSafeArea()
        .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                             self.isActive = true
                        }
        }
    }
}
}
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}



