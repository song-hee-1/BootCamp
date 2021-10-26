//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                let errorText = e.localizedDescription
                print(errorText)
                let alert = UIAlertController(title:"Error", message: errorText, preferredStyle: UIAlertController.Style.alert)
                let confirm = UIAlertAction(title: "확인", style: .default, handler: nil)
                alert.addAction(confirm)
                self.present(alert,animated: true,completion: nil)
                
            } else {
                //Navigate to the ChatViewController
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
             }
        }
    }
    
    
}
