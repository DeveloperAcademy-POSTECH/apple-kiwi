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
    var confirmPassword: String = ""
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
    
    func isEmailValid(_email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@pos.idserve.net"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: email)
    }
    
    func passwordMatch(_confirmPw: String) -> Bool {
        return _confirmPw == password
    }
    
    var isSignInComplete: Bool {
        if !isEmailValid(_email: email) ||
            isEmpty(_field: nickname) ||
            !passwordMatch(_confirmPw: confirmPassword) {
            return false
        }
        return true
    }
    
    var isLoginComplete: Bool {
        if isEmpty(_field: email) || isEmpty(_field: password) {
            return false
        }
        return true
    }
    
    var validEmailAddress: String {
        if isEmailValid(_email: email) {
            return ""
        }
        else {
            return "올바른 이메일 주소를 입력해주세요."
        }
    }
    
    var isNameValid: String {
        if !isEmpty(_field: name) {
            return ""
        }
        else {
            return "이름을 입력해주세요."
        }
    }
    
    var isNicknameValid: String {
        if !isEmpty(_field: nickname) {
            return ""
        }
        else {
            return "닉네임을 입력해주세요."
        }
    }
    
    var isPasswordValid: String {
        if !isEmpty(_field: password) {
            return ""
        }
        else {
            return "비밀번호를 입력해주세요!"
        }
    }
    
    var isConfirmPasswordValid: String {
        if passwordMatch(_confirmPw: confirmPassword) {
            return ""
        }
        else {
            return "동일한 비밀번호를 입력해주세요."
        }
    }
}
