//
//  SignUpView.swift
//  AppleKiwi
//
//  Created by MBSoo on 2022/04/06.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("인증번호 전송")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 200.0, height: 50.0)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading){
                            Button(action:{
                            }){
                                HStack() {
                                    Image(systemName: "chevron.left")
                                    Text("메인 페이지")
                                }
                            }
                        }
                    }
            }.navigationBarTitle("이메일 인증")
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
