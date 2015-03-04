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
    @IBOutlet weak var stopButton: WKInterfaceButton!
    
    

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
    
    @IBAction func ringButtonPressed() {
        ringButton.setHidden(true)
        stopButton.setEnabled(true)
        stopButton.setHidden(false)
    }
    
    @IBAction func stopButtonPressed() {
        stopButton.setHidden(true)
        ringButton.setEnabled(true)
        ringButton.setHidden(false)
    }

}
