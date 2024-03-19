//
//  BindingTextField.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/19.
//

import Foundation
import UIKit

class BindingTextField : UITextField {
    
    var textChanged :(String) -> () = { _ in }
    
    
    func bind(callback :@escaping (String) -> ()) {
       
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField :UITextField) {
        
        self.textChanged(textField.text!)
    }
}
