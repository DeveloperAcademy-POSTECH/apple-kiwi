//
//  MyPage.swift
//  AppleKiwi
//
//  Created by 이창형 on 2022/04/06.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        NavigationView{
        VStack() {
            HStack {
                Text("마이페이지")
                    .padding().font(.title)
                Spacer()
            }.background(.white)
            
            HStack{ Image("test")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .clipShape(Circle()).padding()
                
                Text("changBro chaleea22@pos.idserve.net")
                    .font(.body)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: 400, minHeight: 0, maxHeight: 100, alignment: .center)
                
                
                Spacer()
            }
            
            List {
                Button("알림설정") {
                    
                }
                NavigationLink(
                            destination: ChangePasswordView(),
                            label: {
                                Text("비밀번호 변경")
                            })
                    
                NavigationLink(
                            destination: RuleView(),
                            label: {
                                Text("기본 방침")
                            })
              
                    
                Button("회원 탈퇴") {
                    
                }
            }
            }
            
        }
        }
}
    


struct MyPage_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}


