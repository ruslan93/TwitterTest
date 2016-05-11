//
//  SplashViewController.swift
//  TwitterTest
//
//  Created by Ruslan on 5/11/16.
//  Copyright © 2016 Ruslan Palapa. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController, TwitterLoginDelegate{
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if (!appDelegate.splashDelay){
            appDelegate.delay(1, closure: { 
                //TODO
                self.continueLogin()
            })
        }
    }
    
    func continueLogin() {
        appDelegate.splashDelay = false
        self.goToLogin()
    }
    
    func goToLogin(){
        self.performSegueWithIdentifier("loginSegue", sender: self)
    }
}
