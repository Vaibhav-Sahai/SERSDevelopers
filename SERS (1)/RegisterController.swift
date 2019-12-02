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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func RegisterButtonPressed(_ sender: Any) {
    }
    
}
