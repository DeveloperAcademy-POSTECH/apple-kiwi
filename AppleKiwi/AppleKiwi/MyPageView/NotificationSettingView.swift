//
//  NotificationSettingView.swift
//  AppleKiwi
//
//  Created by 임성균 on 2022/04/08.
//

import SwiftUI

struct NotificationSettingView: View {
    @State private var myWikiNotification: Bool = false
    @State private var logNotification: Bool = false
    
    var body: some View {
        Form {
            Toggle("내 위키 알림", isOn: $myWikiNotification)
                .tint(Color("toggle kiwi"))
            Toggle("로그 알림", isOn: $logNotification)
                .tint(Color("toggle kiwi"))
        }
    }
}

struct NotificationSettingView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationSettingView()
    }
}
