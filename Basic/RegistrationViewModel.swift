//
//  RegistrationViewModel.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/16.
//

import Foundation

class RegistrationViewModel {
    
    var firstName :String
    var lastName :String
    var email :String
    var password :String
    
    init(firstName :String, lastName :String, email :String, password :String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    
    func save() {
        
        let user = User(vm: self)
        
        // DataAccess.save(user)
        
    }
    
}
