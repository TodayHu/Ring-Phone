//
//  InterfaceController.swift
//  Ring Phone WatchKit Extension
//
//  Created by Andrei Joghiu on 01/03/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var ringButton: WKInterfaceButton!
    @IBOutlet weak var ringAnimation: WKInterfaceImage!
    
    
    var count = 1

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    // Ring My Phone
    

    @IBAction func ringButtonPressed() {
        if count % 2 != 0 {
            var dict = ["action-type": "ring"]
            // The first time you pressed the button the sound was not played
            WKInterfaceController .openParentApplication(dict, reply: nil)
            WKInterfaceController .openParentApplication(dict, reply: nil)
            ringButton.setTitle("Stop Ringing")
            ringButton.setBackgroundColor(UIColor.redColor())
            count++
            ringAnimation.setImageNamed("frame")
            ringAnimation.startAnimatingWithImagesInRange(
                NSRange(location: 0, length: 5),
                duration: 0.2,
                repeatCount: 0)
        } else {
            var dict = ["action-type": "stop"]
            WKInterfaceController .openParentApplication(dict, reply: nil)
            ringButton.setTitle("Ring again")
            ringButton.setBackgroundColor(UIColor.greenColor())
            count++
            ringAnimation.stopAnimating()
        }
    }
    
}
