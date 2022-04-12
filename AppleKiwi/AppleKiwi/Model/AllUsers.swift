//
//  AllUsers.swift
//  AppleKiwi
//
//  Created by 종건 on 2022/04/12.
//

import Foundation

class UsersViewModel: ObservableObject {
  static var samples = [
      User(name: "Leeo", content: "LeeoContent"),
                           User(name: "Lisa", content: "LisaContent"),
                           User(name: "Seven", content: "SevenContent"),
                          User(name: "Coo", content: "CooContent")
    ]
}
