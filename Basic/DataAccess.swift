//
//  DataAccess.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/16.
//

import Foundation

class DataAccess {
    
    func getAllUsers() -> [User] {
        
        var users = [User]()
        users.append(User(firstName: "Mohammad", lastName: "Azam", email: "azamsharp@gmail.com", password: "password"))
        users.append(User(firstName: "John", lastName: "Doe", email: "johndoe@gmail.com", password: "password"))
        users.append(User(firstName: "Mary", lastName: "Kate", email: "marykate@gmail.com", password: "password"))
        users.append(User(firstName: "Alex", lastName: "Lowe", email: "alexlowe@gmail.com", password: "password"))

        return users
        
    }
    
}
