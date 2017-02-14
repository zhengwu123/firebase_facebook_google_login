//
//  MainViewController.swift
//  EZDecide
//
//  Created by zheng wu on 2/3/17.
//  Copyright © 2017 CodeMonkey. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
class MainViewController: UIViewController{
            let firebaseAuth = FIRAuth.auth()

    @IBAction func OnSignOut(_ sender: Any) {
        do {
            try firebaseAuth?.signOut()
            print("user signed out")
        self.performSegue(withIdentifier: "BackToLogIn", sender: self)
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
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
