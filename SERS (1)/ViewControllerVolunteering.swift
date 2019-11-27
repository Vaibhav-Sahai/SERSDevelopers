//
//  ViewControllerVolunteering.swift
//  SERS (1)
//
//  Created by Vaibhav Sahai on 26/11/2019.
//  Copyright © 2019 Vaibhav Sahai. All rights reserved.
//

import UIKit

class ViewControllerVolunteering: UIViewController {

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

    @IBAction func ExpoButton(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.expo2020dubai.com/en/programmes/volunteers")! as URL, options: [:], completionHandler: nil)
        
    }
    @IBAction func NoorButton(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://alnoorspneeds.ae/volunteer-with-us/")! as URL, options: [:], completionHandler: nil)
    }
}
