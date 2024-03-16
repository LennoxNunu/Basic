//
//  UsersListViewModel.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/16.
//

import Foundation

class UsersListViewModel {
    
    var userViewModels :[UserViewModel] = [UserViewModel]()
    private var dataAccess :DataAccess
    
    init(dataAccess :DataAccess) {
        self.dataAccess = dataAccess
        
        populateUsers()
    }
    
    private func populateUsers() {
        
        let users = self.dataAccess.getAllUsers()
        self.userViewModels =  users.compactMap { user in
            return UserViewModel(user: user)
        }
    }
}

class UserViewModel {
    
    var firstName :String!
    var lastName :String!
    
    init(user :User) {
        self.firstName = user.firstName
        self.lastName = user.lastName
    }
    
}

