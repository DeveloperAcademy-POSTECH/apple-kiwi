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
    ## 운동.. 좋아하세요...?
    <img width="515" alt="스크린샷 2022-04-14 오후 5 50 45" src="https://user-images.githubusercontent.com/52993882/163349764-52659017-ac23-4312-b573-381e7c39b82c.png">

    포항에서 헬스와 복싱 체육관을 병행하는 피지컬 최강자로 말 안들으면 바로 뚝배기가 날아가니 조심하자
    """)
    static var buckil = User(picture:"Buckil", name: "버킬", content: """
    <div style="padding: 15px; margin: 0px; margin-top: 15px; border: 3px solid #ffffff; background-image: linear-gradient(135deg, #F6C3FF, #ACE1FF, #B4ECB4, #FFFDBB, #FFD3B6, #FFB9B9); border-radius: 4px; text-align: center">
        <span style="font-size:30px; text-shadow: 0 0 6px #FF0000; color:#FFE5E5; vertical-align: textbottom"> 완주마 최강 인싸 </span></div><hr>

    ## 나는 인플루언써가 꿈이었다 😎
    팀원끼리 인스타를 교환하는 시간에 자신의 인플루언서 계정이 따로 있다는것을 밝혔다.<br>

    ## 차단 논란
    팀 활동중 팀원인 Milky가 불러도 대답을 하지 않고 끝까지 자기 할일을 하는 모습을 보고 차단을 맘에 안들어서 차단을 박은게 아닌가에 대한 논란이 있다
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
