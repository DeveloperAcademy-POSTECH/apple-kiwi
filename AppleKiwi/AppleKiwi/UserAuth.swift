//
//  UserAuth.swift
//  AppleKiwi
//
//  Created by Kyubo Shim on 2022/04/13.
//

import Foundation

class UserAuth: ObservableObject {
    enum authState {
        case signedIn, signedOut, undefined
    }
    
    @Published var isUserAuthenticated: authState = .undefined
}
