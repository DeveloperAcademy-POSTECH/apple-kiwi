//
//  SignUpView.swift
//  AppleKiwi
//
//  Created by MBSoo on 2022/04/06.
//

import SwiftUI

struct SignUpView: View {
    
    @State var email:String = ""
    @State var verify:String = ""
    @State private var EnterVerify = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView{
            VStack {
                HStack(alignment: .firstTextBaseline){
                    Text("이메일")
                        .padding(.leading)
                    Spacer()
                    TextField("appledev@pos.idserve.net", text: $email)
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
                    .font(.footnote)
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .background(Color.blue)
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
                    .background(Color.cyan)
                    .cornerRadius(10)
                    Button(action: {
                    }){
                        Text("인증번호 입력")
                            .frame(width: 130, height: 20, alignment: .center)
                    }
                    .font(.footnote)
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
            }
            .navigationBarTitle(Text("이메일 인증"))
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .previewInterfaceOrientation(.portrait)
    }
}

