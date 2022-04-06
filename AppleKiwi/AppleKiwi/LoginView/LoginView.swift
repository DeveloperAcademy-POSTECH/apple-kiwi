//
//  LoginView.swift
//  AppleKiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import SwiftUI

struct LoginView: View {
    enum Action {
        case signUp, resetPW
    }
    
    @State var user: UserViewModel = UserViewModel()
    @State private var showSheet = false
    @State private var action: Action?
    
    var body: some View {
        VStack {
            SignInView(showSheet: $showSheet, action: $action)
                .padding()
                .frame(width: 350.0)
        }.navigationTitle("로그인")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
