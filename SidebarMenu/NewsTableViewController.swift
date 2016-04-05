//
//  NewsTableViewController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    @IBOutlet var menuButton:UIBarButtonItem!
    @IBOutlet var extraButton:UIBarButtonItem!

     var index : Int = Int()
    override func viewDidLoad() {
        super.viewDidLoad()

        if revealViewController() != nil {
//            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))

            revealViewController().rightViewRevealWidth = 150
            extraButton.target = revealViewController()
            extraButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))

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

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 7
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NewsTableViewCell

        // Configure the cell...
        if indexPath.row == 0 {
            cell.postImageView.image = UIImage(named: "1")
//            cell.postTitleLabel.text = "WatchKit Introduction: Building a Simple Guess Game"
//            cell.authorLabel.text = "Simon Ng"
//            cell.authorImageView.image = UIImage(named: "author")
              cell.backgroundColor = UIColor.lightGrayColor()

        } else if indexPath.row == 1 {
            cell.postImageView.image = UIImage(named: "2")
//            cell.postTitleLabel.text = "Building a Chat App in Swift Using Multipeer Connectivity Framework"
//            cell.authorLabel.text = "Gabriel Theodoropoulos"
//            cell.authorImageView.image = UIImage(named: "appcoda-300")
              cell.backgroundColor = UIColor.lightGrayColor()
            
        } else if indexPath.row == 2 {
            cell.postImageView.image = UIImage(named: "3")
            //            cell.postTitleLabel.text = "Building a Chat App in Swift Using Multipeer Connectivity Framework"
            //            cell.authorLabel.text = "Gabriel Theodoropoulos"
            //            cell.authorImageView.image = UIImage(named: "appcoda-300")
                          cell.backgroundColor = UIColor.lightGrayColor()
            
        }
        else if indexPath.row == 3 {
            cell.postImageView.image = UIImage(named: "4")
            //            cell.postTitleLabel.text = "Building a Chat App in Swift Using Multipeer Connectivity Framework"
            //            cell.authorLabel.text = "Gabriel Theodoropoulos"
            //            cell.authorImageView.image = UIImage(named: "appcoda-300")
                          cell.backgroundColor = UIColor.lightGrayColor()
            
        }
        else if indexPath.row == 4 {
            cell.postImageView.image = UIImage(named: "5")
            //            cell.postTitleLabel.text = "Building a Chat App in Swift Using Multipeer Connectivity Framework"
            //            cell.authorLabel.text = "Gabriel Theodoropoulos"
            //            cell.authorImageView.image = UIImage(named: "appcoda-300")
                          cell.backgroundColor = UIColor.lightGrayColor()
            
        }else if indexPath.row == 5 {
            cell.postImageView.image = UIImage(named: "6")
            //            cell.postTitleLabel.text = "Building a Chat App in Swift Using Multipeer Connectivity Framework"
            //            cell.authorLabel.text = "Gabriel Theodoropoulos"
            //            cell.authorImageView.image = UIImage(named: "appcoda-300")
            cell.backgroundColor = UIColor.lightGrayColor()
            
        }
        else {
            cell.postImageView.image = UIImage(named: "7")
//            cell.postTitleLabel.text = "A Beginner’s Guide to Animated Custom Segues in iOS 8"
//            cell.authorLabel.text = "Gabriel Theodoropoulos"
//            cell.authorImageView.image = UIImage(named: "appcoda-300")
              cell.backgroundColor = UIColor.lightGrayColor()
            
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        //store your clicked row into index
        index = indexPath.row
        
        // get to the next screen
        self.performSegueWithIdentifier("goNext", sender: self)
    }
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        let rotationTransformation = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransformation
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            
            cell.layer.transform = CATransform3DIdentity
        })
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "goNext") {
            
            let webViewController = segue.destinationViewController as! DetailViewController
            
            //switch case for row which you have clicked
            switch index{
                
            case 0:
                
                webViewController.url = "http://www.ligue1.com/"
            case 1:
                
                webViewController.url = "http://www.bundesliga.com/en/"
            case 2:
                
                webViewController.url = "http://www.legaseriea.it/en/"
            case 3:
                
                webViewController.url = "http://www.euroleague.net/"
            case 4:
                
                webViewController.url = "http://www.uefa.com/uefaeuropaleague/"
            case 5:
                
                webViewController.url = "http://www.laliga.es/en"
            default:
                webViewController.url = "http://www.uefa.com/uefachampionsleague/"
            }
        }
        
    }
}
