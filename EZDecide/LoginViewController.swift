//
//  LoginViewController.swift
//  EZDecide
//
//  Created by zheng wu on 2/3/17.
//  Copyright © 2017 CodeMonkey. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class LoginViewController: UIViewController , GIDSignInUIDelegate{
    

    @IBAction func onGoogleLogin(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
        self.performSegue(withIdentifier: "loginToMain", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        GIDSignIn.sharedInstance().uiDelegate = self
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
    func sign(_ signIn: GIDSignIn!, dismiss viewController: UIViewController!) {
            do {
            try FIRAuth.auth()?.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
}
