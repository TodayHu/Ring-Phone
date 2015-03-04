//
//  ViewController.swift
//  Ring Phone
//
//  Created by Andrei Joghiu on 01/03/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ringLabel: UILabel!
    @IBOutlet weak var stopLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ringLabel.hidden = true
        stopLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

