//
//  LIveScoretwoViewController.swift
//  FootballGoLive
//
//  Created by Abid Ali on 3/21/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class LIveScoretwoViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    // @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
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