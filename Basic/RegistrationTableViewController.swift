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
        
        
    }
    
    @IBAction func save() {
        self.registrationViewModel.email = self.emailTextField.text!
        self.registrationViewModel.password = self.passwordTextField.text!
        
        var message = ""
        
        if(self.registrationViewModel.email.isEmpty){
                message += "Email is empty!"
        }
        
        if(self.registrationViewModel.password.isEmpty){
                message += " Password is empty!"
        }
        
        let alertController = UIAlertController(title: "Errors", message: message, preferredStyle: .alert)
        
        //let alertOKAction = UIAlertAction(title: "", style: .default, handler: nil)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
