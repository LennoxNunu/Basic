//
//  RegistrationTableViewController.swift
//  Basic
//
//  Created by Lennox Yandisa Nunu on 2024/03/15.
//

import UIKit

class RegistrationTableViewController : UITableViewController {
    
    @IBOutlet weak var firstNameTextField :UITextField!
    @IBOutlet weak var lastnameTextField :UITextField!
    @IBOutlet weak var emailTextField :UITextField!
    @IBOutlet weak var passwordTextField :UITextField!
    
    private var registrationViewModel :RegistrationViewModel!
    var selectedUserViewModel :UserViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstNameTextField.text = self.selectedUserViewModel.firstName
        self.lastnameTextField.text = self.selectedUserViewModel.lastName
    }
    
    @IBAction func save() {
    
        self.registrationViewModel = RegistrationViewModel(firstName: self.firstNameTextField.text!, lastName: self.lastnameTextField.text!, email: self.emailTextField.text!, password: self.passwordTextField.text!)
        
        self.registrationViewModel.save()
    }
    
}
