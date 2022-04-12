//
//  UsersName.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/12.
//

import Foundation
import SwiftUI

struct UsersName: Identifiable {
    var id = UUID()
    
    var name: String
  
    
    init(name: String) {
        self.name = name
    
    }
}
