//
//  LoginController.swift
//  SERS (1)
//
//  Created by Abijith Nair on 11/18/19.
//  Copyright © 2019 Vaibhav Sahai. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginController: UIViewController {
    
    
    @IBOutlet weak var EmailField: UITextField!
    
    
    @IBOutlet weak var PasswordField: UITextField!
    
    
    @IBOutlet var LoginButton: UIView!
    

    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupelements()
    }
    func setupelements() {
        ErrorLabel.alpha = 0
        
    }


    @IBAction func LoginButtonTapped(_ sender: Any) {
        let email = EmailField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = PasswordField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
            }
            else {
                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
        
    }
    
}
