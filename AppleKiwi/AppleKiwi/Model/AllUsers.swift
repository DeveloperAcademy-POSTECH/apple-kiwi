//
//  AllUsers.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/12.
//

import Foundation

class AllUsers: ObservableObject {
    
    @Published var Users: [User] = []
    
    init(){
        self.demo()
    }
    
    func demo() -> [User] {
        //let users: [User] = []
        
        Users.append(User(name: "Leeo", content: "LeeoContent"))
        Users.append(User(name: "Lisa", content: "LisaContent"))
        Users.append(User(name: "Seven", content: "SevenContent"))
        Users.append(User(name: "Coo", content: "CooContent"))
        
        return Users

    }
    
}



