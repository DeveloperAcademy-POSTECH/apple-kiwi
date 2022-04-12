//
//  LoginView.swift
//  apple-kiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

struct LoginView: View {
    // 회원가입 및 비밀번호 찾기 상태를 enum으로 나타냄
    enum Action {
        case signUp, resetPw
    }
    
    @State var user: UserViewModel = UserViewModel()
    @State private var showResetPw = false
    @State private var showSignUp = false
    @State private var action: Action?
    
    var body: some View {
        NavigationView{
            VStack {
                // 키위새 이미지
                Image("kiwi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .offset(y:-10)
                SignInView(showSignUp: $showSignUp, showResetPw: $showResetPw, action: $action)
                    .padding()
                    .frame(width: 350.0)
                    .offset(y: -50)
                    
            }
            // 회원가입 툴바 버튼
//            .toolbar {
//                Button (action:  {
//                    showSignUp.toggle()
//                }, label: {
//                    Text("회원가입")
//                        .fontWeight(.bold)
//                        .foregroundColor(Color("navigation bar kiwi"))
//
//                })
//                .sheet(isPresented: $showSignUp) {
//                    SignUpView(showSignUp: $showSignUp)
//                }
//            }
        }
        .navigationTitle("로그인")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
