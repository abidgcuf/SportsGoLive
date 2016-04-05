//
//  PostViewController.swift
//  BlogReader
//
//  Created by Ravi Shankar on 31/07/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

import UIKit
class PostViewController: UIViewController {
    @IBOutlet var webView:UIWebView!
    var postLink: String = String()
    let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.center = view.center
        activityIndicator.startAnimating()
        view.addSubview(activityIndicator)
        
        let url: NSURL = NSURL(string: postLink)!
        let request: NSURLRequest = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_: UIWebView){
        
        activityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_: UIWebView){
        
        activityIndicator.stopAnimating()
        
    }
}
