//
//  User.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/15.
//

import Foundation

class User {
    
    var firstName :String!
    var lastName :String!
    var email :String!
    var password :String!
    
    init(firstName :String, lastName :String, email :String, password :String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    
    
    init(vm :RegistrationViewModel) {
        self.firstName = vm.firstName
        self.lastName = vm.lastName
        self.email = vm.email
        self.password = vm.password
    }
}