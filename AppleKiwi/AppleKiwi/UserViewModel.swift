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
    
    /*############################*/
    /* Email 빈칸 확인 변수 */
    /* @@ Return @@ */
    /* email empty -> false */
    /* email not empty -> true */
    var isEmailEmpty:Bool {
        if isEmpty(_field: email) {
            return false
        }
        return true
    }
    
    func isEmpty(_field:String) -> Bool {
        return _field.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    /*############################*/
    /* Email 형식 확인 변수 */
    /* @@ Return @@ */
    /* email valid -> true */
    /* email not valid -> false */
    /*############################*/
    var validEmailAddress:Bool {
        if isEmailValid(_email: email) {
            return false
        }
        else {
            return true
        }
    }
    
    func isEmailValid(_email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@pos.idserve.net"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: email)
    }
}
