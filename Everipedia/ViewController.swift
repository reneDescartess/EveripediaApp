//
//  ViewController.swift
//  Everipedia
//
//  Created by everipedia_iMac on 5/6/16.
//  Copyright © 2016 Christian Deciga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LDSplashDelegate {

    var splashView: LDSplashView? //instance of snapchat method
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.snapchatSplash() //calls snapchat method
        
        
    }

    //method for snapchat splash screen
    func snapchatSplash() {
        let splashIcon = LDSplashIcon(initWithImage: UIImage(named: "NEWLOGO.png")!, animationType: .None)
        let snapchatColor = UIColor(red: 0.2598, green: 0.6, blue: 1.0, alpha: 1.0) //blue color
        self.splashView = LDSplashView(initWithSplashIcon: splashIcon!, backgroundColor: snapchatColor, animationType:. Fade)
        self.splashView!.animationDuration = 3.0 //3 seconds
        self.view.addSubview(splashView!)
        self.splashView!.startAnimation() //calls the startAnimation in LDSplashView.swift file
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//finsished setting up snapchat splash screen 