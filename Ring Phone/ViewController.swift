//
//  ViewController.swift
//  Ring Phone
//
//  Created by Andrei Joghiu on 01/03/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var ringLabel: UILabel!
    @IBOutlet weak var stopLabel: UILabel!
    
    var audioPlayer:AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ringLabel.hidden = true
        stopLabel.hidden = true
        
        
        if var filePath = NSBundle.mainBundle().pathForResource("telephone-ring-02", ofType: "mp3") {
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
        } else {
            println("File path wrong")
        }
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("didRing"),
            name: "watchRingButtonPressed",
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("didStop"),
            name: "watchStopButtonPressed",
            object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func didRing() {
        ringLabel.hidden = false
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
        
        //TODO: Send response back to watch after the sounds is played so it can update the button
    }
    
    func didStop() {
        stopLabel.hidden = false
        audioPlayer.stop()
    }
    
    

}

