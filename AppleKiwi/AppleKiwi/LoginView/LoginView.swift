//
//  LoginView.swift
//  AppleKiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

struct LoginView: View {
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
                    self.action = .signUp
                    self.showSheet = true
                }, label: {
                    Text("회원가입")
                })
            }
        }
        .sheet(isPresented: $showSheet) {
            if self.action == .resetPw {
                
            }
            else if self.action == .signUp {
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


//    .sheet(isPresented: $showSheet) {
//        if self.action == .resetPW {
//            print("password change view")
//        }
//        else {
//            print("register view")
//        }
//    }
