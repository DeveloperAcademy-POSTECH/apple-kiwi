//
//  LoggedOutMyPageView.swift
//  AppleKiwi
//
//  Created by 이창형 on 2022/04/12.
//

import SwiftUI

struct LoggedOutMyPageView: View {
    var body: some View {
        NavigationView{
            VStack() {
                HStack {
                    Text("마이페이지")
                        .padding()
                        .font(.system(size: 30,
                                      weight: .bold))
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: LoginView(),
                        label: {
                            Text("로그인").foregroundColor(Color.navKiwi)
                                .padding()
                        })
                    
                }
                .padding(.top)
                
                HStack{ Image("kiwi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .clipShape(Circle()).padding(.leading)
                    Spacer()
                    Text("로그인이\n필요합니다")
                        .font(.title2)
                    Spacer()
                    Spacer()
                    
                    
                }
                
                List {
                    
                    
                    NavigationLink(
                        destination: RuleView(),
                        label: {
                            Text("기본 방침")
                        })
                    
                    
                    
                }
            }.navigationBarHidden(true)
            
        }
    }
}

struct LoggedOutMyPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedOutMyPageView()
    }
}
