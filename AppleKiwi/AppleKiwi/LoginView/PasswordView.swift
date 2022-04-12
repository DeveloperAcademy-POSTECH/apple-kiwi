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
    @Environment(\.presentationMode) var presentationMode
    @State var user: UserViewModel = UserViewModel()
    @State private var VerifyPassword = false
    @State private var Repeatpassword:String = ""
    @Binding var showSignUp: Bool
    @Binding var showResetPw: Bool
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
                                HStack{
                                    Text("이름")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    TextField("김아무개", text: $user.name)
                                        .keyboardType(.default)
                                        .textFieldStyle(.automatic)
                                        .frame( height: 20, alignment: .leading)
                                        .submitLabel(.next)
                                        
                                }
                                HStack{
                                    Text("닉네임")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    TextField("Any", text: $user.nickname)
                                        .keyboardType(.default)
                                        .textFieldStyle(.automatic)
                                        .frame( height: 20, alignment: .leading)
                                        .submitLabel(.next)
                                }
                                HStack{
                                    Text("이메일")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    TextField("kim22@pos.idserve.net", text: $user.email)
                                        .keyboardType(.emailAddress)
                                        .textFieldStyle(.automatic)
                                        .frame( height: 20, alignment: .leading)
                                        .submitLabel(.next)
                                }
                                HStack{
                                    Text("비밀번호")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    SecureField("password", text: $user.password)
                                        .keyboardType(.default)
                                        .textFieldStyle(.automatic)
                                        .frame( height: 20, alignment: .leading)
                                        .submitLabel(.next)
                                }
                                HStack{
                                    Text("비밀번호 확인")
                                        .frame(width: 100, height: 20, alignment: .leading)
                                        .padding(.trailing, 45.0)
                                    SecureField("password", text: $Repeatpassword)
                                        .keyboardType(.default)
                                        .textFieldStyle(.automatic)
                                        .frame( height: 20, alignment: .leading)
                                        .onSubmit {
                                            if(user.password == Repeatpassword){
                                               VerifyPassword = true
                                            }
                                        }
                                        .submitLabel(.done)
                                        .background(GeometryGetter(rect: $kGuardian.rects[0]))
                                }
                                
                        
        //                .disabled(!VerifyPassword)
                            }
                            .listStyle(.grouped)
                            HStack {
                                Spacer()
                                Button("회원가입") {
                                    presentationMode.wrappedValue.dismiss()
                                }
                                .frame(width: 150, height: 40)
                                .font(.system(size: 20).weight(.light))
                                .foregroundColor(.white)
                                .buttonStyle(.plain)
                                .background(Color("button kiwi"))
                                .cornerRadius(10)
                                Spacer()
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
        PasswordView(showSignUp: .constant(false), showResetPw: .constant(false))
    }
}
