//
//  MyPage.swift
//  AppleKiwi
//
//  Created by 이창형 on 2022/04/06.
//

import SwiftUI




struct MyPageView: View {
    @State private var showSheet = false
    @State private var isLoggedIn: Bool = true
    var body: some View {
        if isLoggedIn{
            NavigationView{
                VStack() {
                    HStack {
                        Text("마이페이지")
                            .padding().font(.system(size: 30, weight: .bold))
                        Spacer()
                        Button("로그아웃") {
                            isLoggedIn.toggle()
                            
                        }
                        .foregroundColor(Color.navKiwi)
                        .padding()
                        
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
                        NavigationLink(
                            destination: NotificationSettingView(),
                            label: {
                                Text("알림 설정")
                            })
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
            
        
    else{
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
        
    }



struct MyPage_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
            .previewInterfaceOrientation(.portrait)
    }
}


