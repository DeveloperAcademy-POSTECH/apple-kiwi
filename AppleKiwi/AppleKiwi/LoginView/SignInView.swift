//
//  SignInView.swift
//  AppleKiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

let lightGray = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct SignInView: View {
    @State var user: UserViewModel = UserViewModel()
    @Binding var showSheet: Bool
    @Binding var action:LoginView.Action?
    
    var body: some View {
        VStack {
                //.offset(y:-45)
            
//                Text("이메일")
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.leading)
//                    .frame(width: 60.0)
            TextField("Email", text: $user.email)
                .padding()
                .background(lightGray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                //.offset(y:-80)
//                Text("비밀번호")
//                        .fontWeight(.bold)
//                        .multilineTextAlignment(.leading)
//                        .frame(width: 60.0)
                        
                
            SecureField("Password", text: $user.password)
                .padding()
                .background(lightGray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                //.offset(y:-70)
            
//            Button(action: {
//
//
//            })
            Text("로그인")
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 60)
                .background(.blue)
                .cornerRadius(35.0)
                //.offset(y:-55)
            
            Button(action: {
                self.action = .resetPw
                self.showSheet = true
            }) {
                FindPasswordButton()
            }
        }
    }
}

struct FindPasswordButton: View {
    var body: some View {
        Text("비밀번호를 잊어버리셨나요?")
            .font(.system(size:15, weight: .semibold))
            .foregroundColor(.gray)
            .padding()
            .frame(width: 200, height: 30, alignment: .center)
    }
}
