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
                        .padding().font(.system(size: 30, weight: .bold))
                    Spacer()
                    
                    NavigationLink(
                        destination: LoginView(),
                        label: {
                            Text("로그인").foregroundColor(Color.navKiwi)
                        })
                    .padding()
                }.background(.white)
                
                HStack{ Image("kiwi")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .clipShape(Circle()).padding().offset(x: -80, y:0)
                    VStack{
                    Text("로그인이")
                    .font(.title2).offset(x: -60, y:0)
                   
                    
                    
                        Text("필요합니다")
                            .font(.title2)
                            .offset(x: -50, y:0)
                    }
                }
                
                List {

                    
                    NavigationLink(
                        destination: RuleView(),
                        label: {
                            Text("기본 방침")
                        })
                    
                    
            
                }
            }
            
        }
    }
}

struct LoggedOutMyPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedOutMyPageView()
    }
}
