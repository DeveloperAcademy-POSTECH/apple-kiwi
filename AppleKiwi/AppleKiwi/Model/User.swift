//
//  User.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/11.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var name: String
    var content: String
}
