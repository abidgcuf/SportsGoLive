//
//  LeaguesViewController.swift
//  FootballGoLive
//
//  Created by Abid Ali on 3/17/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class LeaguesViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet var menuButton:UIBarButtonItem!
    @IBOutlet var tbleView: UITableView!
    var arr: [String] = ["Apple", "fb", "Twitter"]
    var index : Int = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.tbleView.tableFooterView = UIView()
        }
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        if indexPath.row == 0 {
            cell.imageView!.image = UIImage(named: "Leagues")
            cell.textLabel?.text = "Leagues 1"
            cell.layer.cornerRadius = 1.0
            
        } else if indexPath.row == 1 {
            cell.imageView!.image = UIImage(named: "Leagues")
            cell.textLabel!.text = "Leagues 2"
            cell.layer.cornerRadius = 1.0
        }
        else if indexPath.row == 2 {
            cell.imageView!.image = UIImage(named: "Leagues")
            cell.textLabel!.text = "Leagues 3"
            cell.layer.cornerRadius = 1.0
        }
        else if indexPath.row == 3 {
            cell.imageView!.image = UIImage(named: "Leagues")
            cell.textLabel!.text = "Leagues 4"
            cell.layer.cornerRadius = 1.0
        }else {
            cell.imageView!.image = UIImage(named: "Leagues")
            cell.textLabel!.text = "Leagues 5"
            cell.layer.cornerRadius = 1.0
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if (indexPath.row == 0){
            let url = NSURL(string: "http://www.iplt20.com/schedule")!
            UIApplication.sharedApplication().openURL(url)
            print("cell\(indexPath.row) selecte")
            
        }else if(indexPath.row == 1){
            let url = NSURL(string: "http://live.cricket.com.au/#/fixture")!
            UIApplication.sharedApplication().openURL(url)
            print("cell\(indexPath.row) selecte")
            
        } else if(indexPath.row == 2){
            let url = NSURL(string: "https://m.yahoo.com/w/cricket/scores?pg=results&.ts=1458636767&.intl=US&.lang=en")!
            UIApplication.sharedApplication().openURL(url)
            print("cell\(indexPath.row) selecte")
            
        } else if(indexPath.row == 3){
            let url = NSURL(string: "http://www.cricbuzz.com/cricket-schedule/series")!
            UIApplication.sharedApplication().openURL(url)
            print("cell\(indexPath.row) selecte")
        }else{
            let url = NSURL(string: "sportsgolive.com/Fixtures")!
            UIApplication.sharedApplication().openURL(url)
            
            print("cell\(indexPath.row) selecte")
        }
        
        
    }
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        let rotationTransformation = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransformation
        let selectionColor = UIView() as UIView
        selectionColor.layer.borderWidth = 1
        selectionColor.layer.borderColor = UIColor.whiteColor().CGColor
        selectionColor.backgroundColor = UIColor.whiteColor()
        cell.selectedBackgroundView = selectionColor
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            
            cell.layer.transform = CATransform3DIdentity
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
