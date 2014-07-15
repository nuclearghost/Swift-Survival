//
//  ViewController.swift
//  Survival
//
//  Created by Mark Meyer on 7/13/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController, GameProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let gameInstance = Game.sharedInstance
        
        var updater = CADisplayLink(target: self, selector: Selector("update"))
        updater.frameInterval = 10
        updater.addToRunLoop(NSRunLoop.currentRunLoop(), forMode: NSRunLoopCommonModes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func update() {
        if (self.fireProgress.progress < 1.0) {
            self.fireProgress.progress += 0.1
            if (self.fireProgress.progress == 1.0) {
                self.fireBtn.enabled = true
            }
        }
    }

    @IBOutlet var fireBtn: UIButton
    @IBOutlet var fireProgress: UIProgressView
    
    @IBAction func btnTapped(sender: AnyObject) {
        print("Button Tapped")
        self.fireProgress.progress = 0.0;
        self.fireBtn.enabled = false;
    }
}

