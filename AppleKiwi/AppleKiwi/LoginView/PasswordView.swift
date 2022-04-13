//
//  PasswordView.swift
//  AppleKiwi
//
//  Created by MBSoo on 2022/04/08.
//

import SwiftUI

struct PasswordView: View {
    @ObservedObject private var kGuardian = KeyboardGuardian(textFieldCount: 1)
    @State private var name = Array<String>.init(repeating: "", count: 5)
    @Environment (\.signInRoot) private var signInRoot
    @State var user: UserViewModel = UserViewModel()
    @State private var VerifyPassword = false
    @State private var Repeatpassword:String = ""
    @State var fieldFocus = [false, false, false, false, false]
    
    var body: some View {
        VStack{
            NavigationView{
                VStack(){
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
                        List{
                            Image("kiwi")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250,
                                       height: 250,
                                       alignment: .topLeading)
                                .clipShape(Circle()).padding()
                            VStack {
                                HStack{
                                    Text("이름")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    KitTextField (
                                        label: "김아무개",
                                        text: $user.name,
                                        focusable: $fieldFocus,
                                        returnKeyType: .next,
                                        tag: 0
                                    ).keyboardType(.default)
                                        .textFieldStyle(.automatic)
                                        .frame( height: 20, alignment: .leading)
                                        .submitLabel(.next)
                                }
                                if !user.isNameValid.isEmpty {
                                    Text(user.isNameValid)
                                        .font(.caption)
                                        .foregroundColor(.red)
                                        .offset(x:40)
                                }
                            }
                            VStack {
                                HStack{
                                    Text("닉네임")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    KitTextField (
                                        label: "Any",
                                        text: $user.nickname,
                                        focusable: $fieldFocus,
                                        returnKeyType: .next,
                                        tag: 1
                                    ).keyboardType(.default)
                                        .textFieldStyle(.automatic)
                                        .frame( height: 20, alignment: .leading)
                                        .submitLabel(.next)
                                    
                                }
                                if !user.isNicknameValid.isEmpty {
                                    Text(user.isNicknameValid)
                                        .font(.caption)
                                        .foregroundColor(.red)
                                        .offset(x:45)
                                }
                            }
                            VStack {
                                HStack{
                                    Text("이메일")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    KitTextField (
                                        label: "kim22@pos.idserve.net",
                                        text: $user.email,
                                        focusable: $fieldFocus,
                                        returnKeyType: .next,
                                        tag: 2
                                        
                                    )
                                    .keyboardType(.default)
                                    .textFieldStyle(.automatic)
                                    .frame( height: 20, alignment: .leading)
                                    .submitLabel(.next)
                                    
                                }
                                if !user.validEmailAddress.isEmpty {
                                    Text(user.validEmailAddress)
                                        .font(.caption)
                                        .foregroundColor(.red)
                                        .offset(x:74)
                                }
                            }
                            VStack {
                                HStack{
                                    Text("비밀번호")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    KitTextField (
                                        label: "password",
                                        text: $user.password,
                                        focusable: $fieldFocus,
                                        returnKeyType: .next,
                                        tag: 3
                                    )
                                    .keyboardType(.default)
                                    .textFieldStyle(.automatic)
                                    .frame( height: 20, alignment: .leading)
                                    .submitLabel(.next)
                                }
                                if !user.isPasswordValid.isEmpty {
                                    Text(user.isPasswordValid)
                                        .font(.caption)
                                        .foregroundColor(.red)
                                        .offset(x:50)
                                }
                            }
                            VStack {
                                HStack{
                                    Text("비밀번호 확인")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    KitTextField (
                                        label: "password",
                                        text: $user.confirmPassword,
                                        focusable: $fieldFocus,
                                        returnKeyType: .done,
                                        tag: 4
                                    )
                                    .keyboardType(.default)
                                    .textFieldStyle(.automatic)
                                    .frame( height: 20, alignment: .leading)
                                    .submitLabel(.done)
                                    .onSubmit {
                                        if(user.password == Repeatpassword){
                                            VerifyPassword = true
                                        }
                                    }
                                }
                                if !user.passwordMatch(_confirmPw: user.confirmPassword) {
                                    Text(user.isConfirmPasswordValid)
                                        .font(.caption)
                                        .foregroundColor(.red)
                                        .offset(x:65)
                                }
                            }
                            

                            HStack {
                                Spacer()
                                Button("회원가입") {
                                    signInRoot.forEach {
                                        $0.wrappedValue = false
                                    }
                                }
                                .frame(width: 150, height: 40)
                                .font(.system(size: 20).weight(.light))
                                .foregroundColor(.white)
                                .buttonStyle(.plain)
                                .background(Color("button kiwi"))
                                .cornerRadius(10)
                                .padding()
                                .opacity(!user.isSignInComplete ? 0.5 : 1)
                                Spacer()
                            }
                        }
                    }
                }
                .navigationBarTitle(Text("회원가입"))
            }
        }
        
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}



