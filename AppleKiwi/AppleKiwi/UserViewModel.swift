//
//  UserViewModel.swift
//  AppleKiwi
//
//  Created by Kyubo Shim on 2022/04/06.
//

import Foundation

struct UserViewModel {
    var email: String = ""
    var password: String = ""
    var nickname: String = ""
    var name: String = ""
    var ID: String = ""
    
    func isEmpty(_field:String) -> Bool {
        return _field.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var isEmailEmpty:Bool {
        if isEmpty(_field: email) {
            return false
        }
        return true
    }
}
