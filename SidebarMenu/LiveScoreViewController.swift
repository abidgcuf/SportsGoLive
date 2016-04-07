//
//  LiveScoreViewController.swift
//  FootballGoLive
//
//  Created by Abid Ali on 3/17/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class LiveScoreViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var menuButton:UIBarButtonItem!
    
    @IBOutlet var tbleView: UITableView!
    var arr: [String] = ["Live Score 1", "Live Score 2", "Live Score 3", "Live Score 4","Live Score 5","Live Score 6","Live Score 7"]
    var index : Int = Int()
    override func viewDidLoad() {
      super.viewDidLoad()
        self.tbleView.tableFooterView = UIView()
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            }

    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        if indexPath.row == 0 {
            cell.imageView!.image = UIImage(named: "live score")
            cell.textLabel?.text = "live score 1"
            cell.layer.cornerRadius = 1.0
            
        } else if indexPath.row == 1 {
            cell.imageView!.image = UIImage(named: "live score")
            cell.textLabel!.text = "live score 2"
            cell.layer.cornerRadius = 1.0
        }
        else if indexPath.row == 2 {
            cell.imageView!.image = UIImage(named: "live score")
            cell.textLabel!.text = "live score 3"
            cell.layer.cornerRadius = 1.0
        }
        else if indexPath.row == 3 {
            cell.imageView!.image = UIImage(named: "live score")
            cell.textLabel!.text = "live score 4"
            cell.layer.cornerRadius = 1.0
        }else {
            cell.imageView!.image = UIImage(named: "live score")
            cell.textLabel!.text = "live score 5"
            cell.layer.cornerRadius = 1.0
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        //store your clicked row into index
        index = indexPath.row
        
        // get to the next screen
        self.performSegueWithIdentifier("goNext", sender: self)
        
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "goNext") {
            
            let webViewController = segue.destinationViewController as! LIveScoretwoViewController
            
            //switch case for row which you have clicked
            switch index{
                
            case 0:
                
                webViewController.url = "http://www.sportsgolive.com/ten-sports/link-2.php"
            case 1:
                
                webViewController.url = "http://www.sportsgolive.com/ten-sports/"
            case 2:
                
                webViewController.url = "sportsgolive.com/server-one"
            case 3:
                
                webViewController.url = "sportsgolive.com/server-Two"
            case 4:
                
                webViewController.url = "sportsgolive.com/server-three"
            default:
                webViewController.url = "http://www.sportsgolive.com/ten-sports/link-2.php"
            }
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
