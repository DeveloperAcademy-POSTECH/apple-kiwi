//
//  ReadWikiView.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/13.
//

import SwiftUI
import MarkdownView

struct ReadWikiView: View {
    @State private var isShowingSheet: Bool = false
    //@EnvironmentObject var user: User
    
    @Binding var user: User
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
       ScrollView {
            VStack {
                HStack {
                    Text("\(user.name)")
                        .font(.title)
                        .bold()
                    Spacer()
                }.padding()
                Divider()
//                Text(user.content)
//                    .padding()
                MarkdownUI(body: user.content)
                Spacer()
            }
        }
        .navigationBarTitle("위키 조회", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        .toolbar {
            Button("위키 수정") {
                isShowingSheet.toggle()
            }
            .sheet(isPresented: $isShowingSheet) {
                EditWikiView(isShowingSheet: $isShowingSheet, user: $user)
            }
        }
    }
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                    Text("뒤로 가기")
                }
            }
        }
}
