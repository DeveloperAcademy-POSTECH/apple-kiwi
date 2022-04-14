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
    ### 리오리오
    """)
    static var judy = User(picture:"Judy",name: "주디", content: """
    ### 주디주디
    """)
    static var changBro = User(picture:"ChangBro",name: "창브로", content: """
    ## 운동.. 좋아하세요...?
    <img width="515" alt="스크린샷 2022-04-14 오후 5 50 45" src="https://user-images.githubusercontent.com/52993882/163349764-52659017-ac23-4312-b573-381e7c39b82c.png">

    포항에서 헬스와 복싱 체육관을 병행하는 피지컬 최강자로 말 안들으면 바로 뚝배기가 날아가니 조심하자
    
    ## 술은 빼지 않는다
    술약이 잡히면 어디서 무엇을 하던지 유산소를 하며 달려서 술약을 참석하는 의리남.
    
    ## 자전거보다 빠른 사나이
    전기자전거를 탄 개리와 지곡회관에서부터 테라로사까지 경주를 했다. 결과는.... 창브로 승!
    """)
    static var buckil = User(picture:"Buckil", name: "버킬", content: """
    <div style="padding: 15px; margin: 0px; margin-top: 15px; border: 3px solid #ffffff; background-image: linear-gradient(135deg, #F6C3FF, #ACE1FF, #B4ECB4, #FFFDBB, #FFD3B6, #FFB9B9); border-radius: 4px; text-align: center">
        <span style="font-size:30px; text-shadow: 0 0 6px #FF0000; color:#FFE5E5; vertical-align: textbottom"> 완주마 최강 인싸 </span></div><hr>

    ## 나는 인플루언써가 꿈이었다 😎
    팀원끼리 인스타를 교환하는 시간에 자신의 인플루언서 계정이 따로 있다는것을 밝혔다.<br>

    ## 차단 논란
    팀 활동중 팀원인 Milky가 불러도 대답을 하지 않고 끝까지 자기 할일을 하는 모습을 보고 맘에 안들어서 차단을 박은게 아닌가에 대한 논란이 있다
    
    ## 트월'퀸' (남자)
    경희대 '카디병수' (카디비 + 병수) 로 치명적인 트월킹으로 남녀 구분없이 게이로 만들어버린다.
    """)
    
    static var cookie = User(picture:"Cookie", name: "쿠키", content: """
    # 주문하신 맥주 나왔습니다
    ![IMG_1314](https://user-images.githubusercontent.com/52993882/163386953-50fa8d3a-10c7-4a67-8172-19c2741a309b.jpg)
    맥주를 보리블렌드티라 부르는데 이게 맞나?
    """)
    static var milky = User(picture:"Milky", name: "밀키", content: """
    <div style="padding: 15px; margin: 0px; margin-top: 15px; border: 3px solid #ffffff; background-image: linear-gradient(135deg, #3A2302, #5A6652, #9CB38E, #A8BF98, #AE6C04); border-radius: 4px; text-align: center">
            <span style="font-size:30px; text-shadow: 0 0 6px #FF0000; color:#FFE5E5; vertical-align: textbottom"> ENFP 군필 여대생 </span></div><hr>

    # 애플 아카데미 최강 보컬 지망생
    MC1 완주마팀 노래방 정모에서 Let it go와 Rolling in the deep을 원키로 소화해내 팀원들의 고막을 두개로 찢어버렸다. (ㄹㅇ임)

    # 증명사진 제조기
    아이패드를 상시로 들고다니며 대놓고 그림을 그려달라 그러면 언짢은 표정을 짓는다. 가끔 삘받으면 초상화를 그려준다. 500원을 받고 그려준다.<br>
    어떤 그림이 나올진 장담할수 없지만 대참사가 날수도 있으니 주의하자

    # 소식하는 돼지
    식탐이 많은데에 비해 밥한공기를 다 못먹을 정도로 굉장히 소식한다. 같이 밥을 먹는다면 더치페이가 개꿀이므로 밥신청을 해보도록 하자
    """)
    static var gary = User(picture:"Gary", name: "게리", content: """
    ## 아마추어 불참러
     완주마 팀 모임에 올 확률이 로또 걸리는것보다 낮다는 전설의 불참러.
     웬만한 일이 있지 않는 이상 오지 않는다.
     혼자 팀원들을 왕따시키는 기술이 있다. - 중요-<br>
     <b><s>본인은 용납 못한다고 한다</s></b>
        
    ## 흰색 하이바 귀신
    <img height="400" alt="스크린샷 2022-04-14 오후 5 50 45" src="https://user-images.githubusercontent.com/52993882/163394555-cf1cd3ac-adac-468a-850d-7c945f9b814f.jpg"/>
       
    포항공대 주변에 흰색 하이바를 쓰고 자전거를 타는 사람이 있다면 99.92% 게리라고 의심해 볼 수 있다.
       
   ## 알콜중독자
   코로나에 걸렸을 당시 미열이 남아있음에도 불구하고 알코올로 씻어낸다고 격리중에 홀로 위스키로 혼술을 했다.<br>
    <b><s>매일 술없이 잠들 수 없고 수업 중 손 떨리는 것을 자주 목격 당한다.</s></b>
    
   ## 자칭 탱커
   롤 할때 탱커를 주로 한다고 한다.
   """ )
    
    static var seodam = User(picture:"Seodam",name: "서담", content: """
    # 헬스장 빤쓰런 사건
    전날 과음을 하고 다음날 팀원인 창브로와 헬스장을 가기로 했는데, 창브로가 운동빡쌔게 시킬까봐 아침에 혼자 운동하고 빤쓰런을 쳤다.
    
    # 팩트폭력배

    * 쿠키: "아 저는 후반에 지쳐 떨어져나가는 타입이에요. 그래서 지금 노는중이에요" <br> <span style="color:red">폭력배 </span>: "처음엔 노느라 안 하고, 나중엔 지쳐서 안 하면 그냥 안 하는거 아니에요?"
    * 창브로: "10억 주면 하나 더 들 수 있잖아요" <br> <span style="color:red"> 폭력배 </span> : "10억 줘도 못 해요" <s>밀키: 줄 수는 있나요? </s>
    * ~고릿적 노래가 나오는 중~ <br><span style="color:red"> 폭력배 </span> : "개리 이 노래 뭐에요?" (개리는 우리 팀 최연장자다.)
    """)
}
