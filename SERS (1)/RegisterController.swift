//
//  RegisterController.swift
//  SERS (1)
//
//  Created by Vaibhav Sahai on 02/12/2019.
//  Copyright © 2019 Vaibhav Sahai. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    
    
    @IBOutlet weak var EmailBox: UITextField!
    
    @IBOutlet weak var UsernameBox: UITextField!
    
    @IBOutlet weak var PasswordBox: UITextField!
    
    @IBOutlet weak var RegisterButton: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupelements()
    }
    func setupelements() {
        ErrorLabel.alpha = 0
        
    }
    
    ///Check the fields and validate
    func validateFields() -> String? {
        if EmailBox.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordBox.text?.trimmingCharacters(in: .whitespaces) == ""
        {
            return "Please fill all boxes"
        }
        
        
        return nil
    }
    
    @IBAction func RegisterButtonPressed(_ sender: Any) {
        ///Validate the fields
        let error = validateFields()
        if error != nil{
            showError(error!)
        }
        else {
            ///Create the user
            
            ///Transition to the homescreen
            
            
        }

    }
    func showError(_ message:String){
        ErrorLabel.text == message
        ErrorLabel.alpha == 1
    }
        
    
}
