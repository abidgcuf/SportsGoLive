//
//  NewsViewController.swift
//  FootballGoLive
//
//  Created by Abid Ali on 3/18/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController  ,NSXMLParserDelegate{
    
    
    @IBOutlet weak var menuButton:UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
