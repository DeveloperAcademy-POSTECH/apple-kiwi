//
//  WikiModel.swift
//  AppleKiwi
//
//  Created by 임성균 on 2022/04/07.
//

import Foundation

class WikiModel: ObservableObject {
    @Published var title: String
    @Published var bodyText: String
    
    init(title: String, bodyText: String) {
        self.title = title
        self.bodyText = bodyText
    }
    
    static var sample = WikiModel(title: "교관 키위", bodyText: """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
}
