//
//  LoginViewController.swift
//  TwitterTest
//
//  Created by Ruslan on 5/11/16.
//  Copyright © 2016 Ruslan Palapa. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    
    @IBOutlet weak var logInView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Gradient
        
        let color1 = UIColor(red: 42.0/255.0, green: 163.0/255.0, blue: 239.0/255.0, alpha: 1.0)
        let color2 = UIColor(red: 62.0/255.0, green: 193.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        let color3 = UIColor(red: 122.0/255.0, green: 213.0/255.0, blue: 239.0/255.0, alpha: 1.0)
        let color4 = UIColor(red: 162.0/255.0, green: 233.0/255.0, blue: 239.0/255.0, alpha: 1.0)

        let gradientColor: [CGColor] = [color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor]
        let gradientLocation: [Float] = [0, 0.25, 0.75, 1]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.locations = gradientLocation
        gradientLayer.colors = gradientColor
        gradientLayer.frame = self.view.frame
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logInButtonPressed(sender: AnyObject) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
