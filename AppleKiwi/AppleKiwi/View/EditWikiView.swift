//
//  EditWikiView.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/13.
//

import SwiftUI

struct EditWikiView: View {
    @Binding var isShowingSheet: Bool
    @Binding var user: User
    
    var body: some View {
        VStack {
            HStack {
                Text("**위키 수정**")
                    .padding()
                Spacer()
                Button("완료") {
                    isShowingSheet.toggle()
                }
                .padding()
            }
            Divider()
            ScrollView(.vertical) {
                TextEditor(text: $user.content)
                    .padding()
                    .frame(height: 800)
            }
        }
        
    }
}
