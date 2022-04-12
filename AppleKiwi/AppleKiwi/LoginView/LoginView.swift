//
//  LoginView.swift
//  apple-kiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

struct LoginView: View {
    
    @State var user: UserViewModel = UserViewModel()
    @State private var showResetPw = false
    @State private var showSignUp = false
    
    var body: some View {
        NavigationView{
            VStack {
                // 키위새 이미지
                Image("kiwi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .offset(y:-10)
                SignInView(showSignUp: $showSignUp, showResetPw: $showResetPw)
                    .padding()
                    .frame(width: 350.0)
                    .offset(y: -50)
                    
            }
        }
        .navigationTitle("로그인")
        .accentColor(.black)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
