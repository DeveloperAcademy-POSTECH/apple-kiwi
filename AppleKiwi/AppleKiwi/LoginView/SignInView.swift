//
//  SignInView.swift
//  AppleKiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

struct SignInView: View {
    @State var user: UserViewModel = UserViewModel()
    @Binding var showSheet: Bool
    @Binding var action:LoginView.Action?
    
    var body: some View {
        VStack {
            Image("kiwi")
                .resizable()
                .frame(width: 300, height: 300)
            HStack(alignment: .center) {
                Text("이메일")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .frame(width: 60.0)
                    
            
                TextField("Email", text: $user.email)
                    .padding()
                    .background(.gray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
            }
            HStack(alignment: .center) {
                Text("비밀번호")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .frame(width: 60.0)
                        
                
                SecureField("Password", text: $user.password)
                    .padding()
                    .background(.gray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
            }
            Text("로그인")
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 60)
                .background(.blue)
                .cornerRadius(35.0)

        }
    }
}
