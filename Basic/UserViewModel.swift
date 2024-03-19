//
//  UserViewModel.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/19.
//

import Foundation

class UserViewModel {
    
    var email :Dynamic<String>!
    var password :Dynamic<String>!
    
    init(email :String, password :String) {
        self.email = Dynamic<String>(email)
        self.password = Dynamic<String>(password)
    }
    
}
