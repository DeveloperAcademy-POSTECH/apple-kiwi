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
    @State private var showSheet = false
    @State private var action: Action?
    
    var body: some View {
        NavigationView{
            VStack {
                Image("kiwi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .offset(y:-10)
                SignInView(showSheet: $showSheet, action: $action)
                    .padding()
                    .frame(width: 350.0)
                    .offset(y: -50)
                    
            }
            .navigationTitle("로그인")
            .toolbar {
                Button (action:  {
                    showSheet.toggle()
                }, label: {
                    Text("회원가입")
                })
                .sheet(isPresented: $showSheet) {
                    SignUpView()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
