//
//  EditableMarkdownView.swift
//  AppleKiwi
//
//  Created by 임성균 on 2022/04/07.
//

import SwiftUI
import MarkdownView

struct EditableMarkdownView: View {
    @Binding var bodyText: String
    
    var body: some View {
        VStack {
            MarkdownUI(body: bodyText)
        }
    }
}
