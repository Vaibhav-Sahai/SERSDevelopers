//
//  RegisterController.swift
//  SERS (1)
//
//  Created by Vaibhav Sahai on 02/12/2019.
//  Copyright © 2019 Vaibhav Sahai. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

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
            PasswordBox.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            UsernameBox.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
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
            let username = UsernameBox.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = EmailBox.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = PasswordBox.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            ///Create the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                ///Check for error
                if err != nil {
                    ///There was an error
                    self.showError("Error Creating User")
                }
                else{
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["Username":username, "uid": result!.user.uid]) { (error) in
                        if error != nil{
                            self.showError("Big Oof")
                        }
                    }
                    ///Transition to the homescreen
                    self.transitionToHome()
                }
    
            }
            
            
            
        }

    }
    func showError(_ message:String){
        ErrorLabel.text == message
        ErrorLabel.alpha == 1
    }
        
    func transitionToHome() {
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
}
