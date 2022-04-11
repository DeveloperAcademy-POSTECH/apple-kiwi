//
//  ReadWikiView.swift
//  AppleKiwi
//
//  Created by 임성균 on 2022/04/06.
//

import SwiftUI
import MarkdownView

struct ReadWikiView: View {
    @State private var isShowingSheet: Bool = false
    @StateObject var wikiSample = WikiModel.sample
     var user: User
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("\(wikiSample.title)")
                        .font(.title)
                        .bold()
                    Spacer()
                }.padding()
                Divider()
                EditableMarkdownView(bodyText: $wikiSample.bodyText)
                    .padding()
                Spacer()
            }
        }
        .navigationBarTitle("위키 조회", displayMode: .inline)
        .toolbar {
            Button("위키 수정") {
                isShowingSheet.toggle()
            }
            .sheet(isPresented: $isShowingSheet) {
                EditWikiView(isShowingSheet: $isShowingSheet)
                    .environmentObject(wikiSample)
            }
        }
    }
}
/*
struct ReadWikiView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ReadWikiView()
        }
    }
}*/
