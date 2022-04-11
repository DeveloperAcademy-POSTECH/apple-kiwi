//
//  RuleView.swift
//  AppleKiwi
//
//  Created by 이창형 on 2022/04/08.
//

import SwiftUI

struct RuleView: View {
    var body: some View {
        VStack(alignment: .leading){
           
                    
        Text("1. 타인을 비난하는 내용을 키위에 담지 마세요.")
                .font(.system(size: 20, weight: .bold)).multilineTextAlignment(.leading).padding()
            
                
            
        Text("2. 욕설 및 음란성 내용을 포함하고 있거나, 오해의 소지를 담고있는 내용은 서술을 자제해주세요.")
                .font(.system(size: 20, weight: .bold)).multilineTextAlignment(.leading).padding()
            
                
        Text("3. 정보 항목에 대해 내용을 서술할 경우, 추측성을 가진 부정확한 내용은 서술을 자제해주세요.")
                    .font(.system(size: 20, weight: .bold))
                    .multilineTextAlignment(.leading)
                    .padding()
                
        Text("4. 본 키위는 애플 아카데미 관계자 외에는 수정이 불가능합니다.")
                .font(.system(size: 20, weight: .bold)).multilineTextAlignment(.leading).padding()
                
        Text("5. 위의 규칙을 위반한 항목에 대해서는 관리자가 삭제할 수 있습니다.")
                .font(.system(size: 20, weight: .bold)).multilineTextAlignment(.leading).padding()
                
            Image("RuleKiwi")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .offset(x: 190, y: 0)
                    
    }
}
}
struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleView()
    }
}
