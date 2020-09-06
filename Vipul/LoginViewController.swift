//
//  LoginViewController.swift
//  Vipul
//
//  Created by karmaa lab on 05/04/19.
//  Copyright © 2019 kLab. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.userText.delegate = self
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        //or
        //self.view.endEditing(true)
        
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
