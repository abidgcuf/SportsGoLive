//
//  ScheduleViewController.swift
//  FootballGoLive
//
//  Created by Abid Ali on 3/17/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {

    @IBOutlet var menuButton:UIBarButtonItem!
   // @IBOutlet var extraButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
//            revealViewController().rightViewRevealWidth = 150
//            extraButton.target = revealViewController()
//            extraButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            // self.view.backgroundColor = UIColor(patternImage: UIImage(named: "yourImage.png")!)
            //self.view.backgroundColor = UIColor.lightGrayColor()
            // self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
