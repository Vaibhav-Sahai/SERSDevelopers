//
//  LoginController.swift
//  SERS (1)
//
//  Created by Abijith Nair on 11/18/19.
//  Copyright © 2019 Vaibhav Sahai. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    @IBOutlet weak var UsernameField: UITextField!
    
    
    @IBOutlet weak var PasswordField: UITextField!
    
    
    @IBOutlet var LoginButton: UIView!
    
    
    
    @IBOutlet var ErrorLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupelements()
    }
    func setupelements() {
        ErrorLabel.alpha = 0
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func LoginButtonTapped(_ sender: Any) {
    }
    
}
