//
//  EditWikiView.swift
//  AppleKiwi
//
//  Created by 임성균 on 2022/04/06.
//

import SwiftUI

struct EditWikiView: View {
    @State private var markdown: String = """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """
    
    var body: some View {
        VStack {
            HStack {
                Text("**위키 수정**")
                    .padding()
                    .font(.title)
                
                Spacer()
                Button("수정 완료") {
                    
                }.padding()
            }
            Divider()
            ScrollView(.vertical) {
                VStack {
                    TextEditor(text: $markdown)
                        .padding()
                        .frame(maxHeight: .infinity)
                }
            }
        }
    }
}

struct EditWikiView_Previews: PreviewProvider {
    static var previews: some View {
        EditWikiView()
    }
}
