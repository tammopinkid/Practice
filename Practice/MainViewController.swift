//
//  MainViewController.swift
//  Practice
//
//  Created by Kamonwat Rojjanadechakul on 11/28/2560 BE.
//  Copyright © 2560 Benjarat Saeang. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let List = ["Aiko","Toki","Mina"]
    var myIndex = 0
    var user: User!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let chevron = UIImage(named: "right-chevron")
        cell.accessoryType = .disclosureIndicator
        cell.accessoryView = UIImageView(image: chevron!)
        cell.textLabel?.text = List[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = self.tableView.indexPathForSelectedRow {
//           
//                (segue.destination as! MapViewController).title = List[indexPath.row] + "'s Location"
//            
//        }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()

//        Auth.auth().addStateDidChangeListener { auth, user in
//            guard let user = user else { return }
//            self.user = User(authData: user)
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
