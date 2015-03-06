//
//  About.swift
//  Ring Phone
//
//  Created by Andrei Joghiu on 6/3/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import UIKit

class About: UIViewController {

    @IBOutlet var aboutLabel: UILabel!
    
//    let version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
//    let version = NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"]
    

    
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
    

}
