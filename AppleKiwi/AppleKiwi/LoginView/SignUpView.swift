//
//  SignUpView.swift
//  AppleKiwi
//
//  Created by MBSoo on 2022/04/06.
//

import SwiftUI

struct SignUpView: View {
    @State var user: UserViewModel = UserViewModel()
    @State var verify:String = ""
    @State private var EnterVerify = false
    @State private var EmailVerify = false
    var body: some View {
        NavigationView{
            VStack {
                HStack(alignment: .firstTextBaseline){
                    Text("이메일")
                        .padding(.leading)
                    Spacer()
                    TextField("appledev@pos.idserve.net", text: $user.email)
                        .keyboardType(.emailAddress)
                        .textFieldStyle(.automatic)
                        .frame(width: 230, height: 40, alignment: .leading)
                    Spacer()
                }
                HStack(alignment: .firstTextBaseline){
                    if(EnterVerify)
                    {
                        Text("인증번호")
                        .padding(.leading)
                        Spacer()
                        TextField("", text: $verify)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(.automatic)
                            .frame(width: 230, height: 40, alignment: .leading)
                            .submitLabel(.next)
                            .onSubmit {
                                
                                validationEmail()
                            }
                        Spacer()
                        
                    }
                }
                if(!EnterVerify){
                    Button(action: {
                        self.EnterVerify.toggle()
                    }){
                        Text("인증번호 전송")
                            .frame(width: 130, height: 20, alignment: .center)
                    }
                    .disabled(!user.isEmailEmpty)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .background(Color("button kiwi"))
                    .cornerRadius(10)
                }
                else{
                    Button(action: {
                    }){
                        Text("인증번호 재전송")
                            .frame(width: 130, height: 20, alignment: .center)
                    }
                    .font(.footnote)
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .background(Color("button kiwi2"))
                    .cornerRadius(10)
                    NavigationLink(destination: PasswordView().navigationBarHidden(true), label:{ Text("인증번호 입력")
                            .frame(width: 130, height: 20, alignment: .center
                    )})
                    .font(.footnote)
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .background(Color("button kiwi"))
                    .cornerRadius(10)
                    
                    
                }
                
            }
            .navigationBarTitle(Text("이메일 인증"))
        }
    }
    private func validationEmail(){
        EmailVerify = true
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .previewInterfaceOrientation(.portrait)
    }
}

