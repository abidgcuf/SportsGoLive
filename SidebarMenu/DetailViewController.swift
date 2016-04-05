//
//  DetailViewController.swift
//  PinterestLayout
//
//  Created by Shrikar Archak on 1/13/15.
//  Copyright (c) 2015 Shrikar Archak. All rights reserved.
//

import UIKit
class DetailViewController: UIViewController{
    
    @IBOutlet weak var webView: UIWebView!
    
    var url : String = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.backgroundColor = UIColor.grayColor()
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)

    }
    
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
// Get the new view controller using segue.destinationViewController.
// Pass the selected object to the new view controller.
}
*/
