//
//  SignInView.swift
//  apple-kiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

let lightGray = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedEmail = "admin"
let storedPassword = "admin"

struct SignInRootKey: EnvironmentKey {
    static let defaultValue: [Binding<Bool>] = []
}

extension EnvironmentValues {
    var signInRoot: [Binding<Bool>] {
        get {return self [SignInRootKey]}
        set {return self[SignInRootKey] = newValue}
    }
}

struct SignInView: View {
    @Environment (\.signInRoot) private var signInRoot
    @State var user: UserViewModel = UserViewModel()
    @Binding var showSignUp: Bool
    @Binding var showResetPw: Bool
    
    @State var authSucceed: Bool = false
    @State var authFail:Bool = false
    
    var body: some View {
        VStack {
            // 이메일 입력창
            TextField("Email", text: $user.email)
                .padding()
                .background(lightGray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                        
            // 비밀번호 입력창
            SecureField("Password", text: $user.password)
                .padding()
                .background(lightGray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            // 로그인 버튼
            // 메인 페이지에서의 상태 처리가 필요함
            Button (action: {
                if self.user.email == storedEmail && self.user.password == storedPassword {
                    self.authSucceed = true
                    self.authFail = false
                }
                else {
                    self.authFail = true
                    self.authSucceed = false
                }
            }) {
            Text("로그인")
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 60)
                .background(Color("button kiwi"))
                .cornerRadius(10.0)
            }.disabled(!user.isLoginComplete)
            
            // 비밀번호 찾기 버튼
            Button(action: {
                showResetPw.toggle()
            }){
                FindPasswordButton()
            }
            .sheet(isPresented: $showResetPw) {
                ChangePasswordView()
            }
            
            // 비밀번호 찾기 버튼
            Button(action: {
                showSignUp.toggle()
            }){
                LoginButton()
            }
            .offset(y: -10)
            .sheet(isPresented: $showSignUp) {
                SignUpView(showSignUp: $showSignUp, showResetPw: $showResetPw)
                    .environment(\.signInRoot, signInRoot + [$showSignUp])
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(showSignUp: .constant(false), showResetPw: .constant(false))
    }
}

// 비밀번호 찾기 버튼 스타일
struct FindPasswordButton: View {
    var body: some View {
        Text("비밀번호를 잊어버리셨나요?")
            .font(.system(size:15, weight: .semibold))
            .foregroundColor(.gray)
            .padding()
            .frame(width: 200, height: 30, alignment: .center)
    }
}

// 비밀번호 찾기 버튼 스타일
struct LoginButton: View {
    var body: some View {
        Text("아직 회원이 아니신가요?")
            .font(.system(size:15, weight: .semibold))
            .foregroundColor(.gray)
            .padding()
            .frame(width: 200, height: 30, alignment: .center)
    }
}
