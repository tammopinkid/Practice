//
//  SignUpViewController.swift
//  Practice
//
//  Created by Kamonwat Rojjanadechakul on 11/28/2560 BE.
//  Copyright © 2560 Benjarat Saeang. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class SignUpViewController: UIViewController {

    var ref:DatabaseReference?
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var latitudeField: UITextField!
    @IBOutlet weak var longitudeField: UITextField!
    @IBOutlet weak var randomButton: RoundButton!
    @IBOutlet weak var signUpButton: RoundButton!
    
    @IBAction func randomMethod(_ sender: RoundButton) {
    }
    
    @IBAction func signUpMethod(_ sender: RoundButton) {
        ref = Database.database().reference()
        if usernameField.text != "" && passwordField.text != "" && latitudeField.text != "" && longitudeField.text != "" {
            Auth.auth().createUser(withEmail: usernameField.text!, password: passwordField.text!, completion: {(user,error) in
                if user != nil{
                    print("SUCCESS")
                    self.ref?.child("users").childByAutoId().setValue(["username": self.usernameField.text, "latitude": self.latitudeField.text, "longitude": self.longitudeField.text])
                    //self.ref?.child("users").child("username").setValue(["latitude": self.latitudeField.text, "longitude": self.longitudeField.text])
//                    self.ref?.child("email").childByAutoId().setValue(self.usernameField.text)
//                    self.ref?.child("latitude").childByAutoId().setValue(self.latitudeField.text)
//                    self.ref?.child("longitude").childByAutoId().setValue(self.longitudeField.text)
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
