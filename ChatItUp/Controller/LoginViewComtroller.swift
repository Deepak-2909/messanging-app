//
//  LoginViewComtroller.swift
//  ChatItUp
//
//  Created by Deepak on 05/06/22.
//

import Foundation
import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.tintColor = UIColor.systemBlue
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
              // ...
                if let error = error {
                    print(error)
                } else {
                    self.performSegue(withIdentifier: "loginToChat", sender: self)
                }
            }
        }
    }
    
}
