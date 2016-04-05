//
//  AboutUSViewController.swift
//  FootballGoLive
//
//  Created by Abid Ali on 3/21/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class AboutUSViewController: UIViewController {

    @IBOutlet var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            // self.view.backgroundColor = UIColor(patternImage: UIImage(named: "yourImage.png")!)
            //self.view.backgroundColor = UIColor.lightGrayColor()
        }
        
        
        
        
        
        
            }

}
