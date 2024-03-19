//
//  RegistrationTableViewController.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/19.
//

import Foundation
import UIKit

class RegistrationTableViewController : UITableViewController {
    
    private var registrationViewModel :RegistrationViewModel!
    
    var selectedUser :UserViewModel!
    
    @IBOutlet weak var emailTextField :BindingTextField! {
        didSet {
            emailTextField.bind { self.registrationViewModel.email = $0 }
        }
    }
    
    @IBOutlet weak var passwordTextField :BindingTextField! {
        didSet {
            passwordTextField.bind { self.registrationViewModel.password = $0 }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registrationViewModel = RegistrationViewModel()
        
        self.selectedUser.email.bind { self.emailTextField.text = $0 }
        self.selectedUser.password.bind { self.passwordTextField.text = $0 }
        
    }
    
    @IBAction func save() {
        
        print(self.registrationViewModel)
        
        self.selectedUser.email.value = "Mary"
        self.selectedUser.password.value = "marypassword"
        
    }
    
}
