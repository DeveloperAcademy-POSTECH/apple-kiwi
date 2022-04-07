//
//  ChangePasswordView.swift
//  AppleKiwi
//
//  Created by 이창형 on 2022/04/07.
//

import SwiftUI

struct ChangePasswordView: View {
    @State private var userViewModel = UserViewModel()
    @State private var newPassword = ""
    var body: some View {
        VStack{
            HStack{
                Text("현재 비밀번호")
                    .padding()
                Spacer()
                SecureField("현재 비밀번호", text: $userViewModel.password)
                    .frame(width: 200, height: 10, alignment: .center)
            }
            HStack{
                Text("변경할 비밀번호")
                    .padding()
                Spacer()
                SecureField("변경할 비밀번호", text: $newPassword).frame(width: 200, height: 10, alignment: .center)
            }
            HStack{
                Text("변경할 비밀번호 확인")
                    .padding()
                Spacer()
                SecureField("변경할 비밀번호 확인", text: $newPassword)
                    .frame(width: 200, height: 10, alignment: .center)
            }
        
        
    }
    }
}

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}


