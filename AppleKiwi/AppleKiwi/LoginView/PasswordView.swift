//
//  PasswordView.swift
//  AppleKiwi
//
//  Created by MBSoo on 2022/04/08.
//

import SwiftUI

struct PasswordView: View {
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
                        List{
                        ScrollView(){
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
                            }
                            HStack{
                                Text("닉네임")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .padding(.trailing, 45.0)
                                TextField("Any", text: $user.nickname)
                                    .keyboardType(.default)
                                    .textFieldStyle(.automatic)
                                    .frame( height: 20, alignment: .leading)
                            }
                            HStack{
                                Text("아이디")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .padding(.trailing, 45.0)
                                TextField("kim22", text: $user.ID)
                                    .keyboardType(.default)
                                    .textFieldStyle(.automatic)
                                    .frame( height: 20, alignment: .leading)
                                Spacer()
                                Button(action: {
                                }){
                                    Text("중복확인")
                                        .fontWeight(.light)
                                        .frame(width: 60, height: 20, alignment: .center)
                                        .foregroundColor(Color.white)
                                }
                                .buttonStyle(.bordered)
                                .background(Color.gray)
                                .cornerRadius(10)
                            }
                            HStack{
                                Text("이메일")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .padding(.trailing, 45.0)
                                TextField("kim22@pos.idserve.net", text: $user.email)
                                    .keyboardType(.default)
                                    .textFieldStyle(.automatic)
                                    .frame( height: 20, alignment: .leading)
                            }
                            HStack{
                                Text("비밀번호")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .padding(.trailing, 45.0)
                                SecureField("password", text: $user.password)
                                    .keyboardType(.default)
                                    .textFieldStyle(.automatic)
                                    .frame( height: 20, alignment: .leading)
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
                            }
                    }
                    .listStyle(.grouped)
                    
    //                .disabled(!VerifyPassword)
                }
                        Button("회원가입") {
                            presentationMode.wrappedValue.dismiss()
                        }
                        .frame(width: 150, height: 40)
                        .font(.footnote)
                        .foregroundColor(.white)
                        .buttonStyle(.plain)
                        .background(Color("button kiwi"))
                        .cornerRadius(10)
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
