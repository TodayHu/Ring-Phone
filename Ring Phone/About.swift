//
//  About.swift
//  Ring Phone
//
//  Created by Andrei Joghiu on 6/3/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import UIKit
import Crashlytics

class About: UIViewController {

    @IBOutlet var aboutLabel: UILabel!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let version = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as? String {
            self.aboutLabel.text = "Version: " + version
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func mailButtonPressed(sender: UIButton) {
        
        let email = "raiden007@gmail.com"
        let url = NSURL(string: "mailto:\(email)")
        UIApplication.sharedApplication().openURL(url!)
        

        
    }
    

}
