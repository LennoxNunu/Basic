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



struct BrokenRule {
    var propertyName : String
    var message : String
}



protocol ViewModel {
    var BrokenRules : [BrokenRule]{ get set}
    var isValid : Bool { mutating get }
    
}



class RegistrationViewModel : ViewModel{
    var BrokenRules : [BrokenRule] = [BrokenRule]()
    
    var email :String!
    var password :String!
    
    var isValid: Bool{
        get{
            self.BrokenRules = [BrokenRule]()
            self.validate()
            return self.BrokenRules.count == 0 ? true : false
        }
    }
}

extension RegistrationViewModel {
    
    private func validate(){
        
        if(self.email.isEmpty){
            self.BrokenRules.append(BrokenRule(propertyName: "email", message: "email is required"))
        }
        
        if(self.password.isEmpty){
            self.BrokenRules.append(BrokenRule(propertyName: "password", message: "password is required"))
        }
        
    }

}
