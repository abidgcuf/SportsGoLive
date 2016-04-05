//
//  LiveStreamViewController.swift
//  FootballGoLive
//
//  Created by Abid Ali on 3/18/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class LiveStreamViewController: UIViewController {

    @IBOutlet var menuButton:UIBarButtonItem!
    
    
    //    @IBOutlet var webView:UIWebView!
    override func viewDidLoad() {
        //        super.viewDidLoad()
        //        let url = NSURL (string: "http://android.livescore.com/");
        //        let requestObj = NSURLRequest(URL: url!);
        //        webView.loadRequest(requestObj);
        
        
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            // self.view.backgroundColor = UIColor(patternImage: UIImage(named: "yourImage.png")!)
            //self.view.backgroundColor = UIColor.lightGrayColor()
            // self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
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
