//
//  LoginView.swift
//  apple-kiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

struct LoginView: View {
    
    @State var user: UserViewModel = UserViewModel()
    @State private var showResetPw = false
    @State private var showSignUp = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            VStack {
                // 키위새 이미지
                Image("kiwi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .offset(y:-10)
                SignInView(showSignUp: $showSignUp, showResetPw: $showResetPw)
                    .padding()
                    .frame(width: 350.0)
                    .offset(y: -50)
            }
        }
        .navigationTitle("로그인")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: goBack){
            BackButton()
        })
    }
    
    func goBack() {
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct BackButton: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .foregroundColor(Color("button kiwi"))
            Text ("뒤로가기")
                .foregroundColor(Color("button kiwi"))
                .fontWeight(.bold)
                .offset(x:-5)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
