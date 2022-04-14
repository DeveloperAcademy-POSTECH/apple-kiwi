//
//  User.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/13.
//


import Foundation
import SwiftUI
import UIKit

struct User: Identifiable, Hashable {
    var id = UUID()
    
    var picture: String?
    var name: String
    var content: String

    init(picture: String, name: String, content: String) {
        self.picture = picture
        self.name = name
        self.content = content
    }
    
    static var sampleUsers: [User] = [User.leeo, User.judy, User.changBro, User.buckil, User.cookie, User.milky, User.gary, User.seodam]
    
    static var leeo = User(picture:"Leeo" ,name: "리이오", content: """
    ### Hi there 👋

    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡

    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript

    My current side project is [Markdown Profile](https://markdownprofile.com)

    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)

    [Twitter 🐦](https://twitter.com/dannyverp)

    [Website 🌍](https://dannyverpoort.dev/)

    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
    static var judy = User(picture:"Judy",name: "주디", content: """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
    static var changBro = User(picture:"ChangBro",name: "창브로", content: """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
    static var buckil = User(picture:"Buckil", name: "버킬", content: """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
    static var cookie = User(picture:"Cookie", name: "쿠키", content: """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
    static var milky = User(picture:"Milky", name: "밀키", content: """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
    static var gary = User(picture:"Gary", name: "게리", content: """
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    """)
    static var seodam = User(picture:"Seodam",name: "서담", content: """
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
