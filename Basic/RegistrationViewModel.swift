//
//  RegistrationViewModel.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/19.
//

import Foundation

class Dynamic<T> {
    
    typealias Listener = (T) -> Void
    var listener :Listener?
    
    func bind(listener :Listener?) {
        self.listener = listener
        listener?(value!)
    }
    
    var value :T? {
        didSet {
            listener?(value!)
          
        }
    }
    
    init(_ v:T) {
        value = v
    }
    
}

class RegistrationViewModel {
    
    var email :String!
    var password :String!
}
