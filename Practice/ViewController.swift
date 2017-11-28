//
//  ViewController.swift
//  Practice
//
//  Created by Kamonwat Rojjanadechakul on 11/28/2560 BE.
//  Copyright © 2560 Benjarat Saeang. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: RoundButton!
    
    @IBAction func signInMethod(_ sender: RoundButton) {
        if usernameField.text == "" && passwordField.text == "" {
            print("NO Email")
        }
        if usernameField.text != "" && passwordField.text != "" {
            Auth.auth().signIn(withEmail: usernameField.text!, password: passwordField.text!, completion: {(user,error) in
                if user != nil{
                    print("SUCCESS")
                    self.performSegue(withIdentifier: "signInToMain", sender: self)
                } else {
                    if let myError = error?.localizedDescription {
                        print(myError)
                    } else {
                        print("ERROR")
                    }
                }
            })
        }
    }
    
    @IBAction func cancleMethod(_ sender: RoundButton) {
        usernameField.text = ""
        passwordField.text = ""
    }
    
    //    func PushToMainViewController() {
//        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let MainViewController:MainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
//        self.present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Auth.auth().addStateDidChangeListener() { auth, user in
//            if user != nil {
//                print("have user")
//                self.performSegue(withIdentifier: "signInToMain", sender: nil)
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

