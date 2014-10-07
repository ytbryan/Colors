//
//  MasterViewController.swift
//  Colors
//
//  Created by Bryan Lim on 10/6/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import UIKit
import Darwin

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = NSMutableArray()
    var number:Int = 3
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
            self.clearsSelectionOnViewWillAppear = false
            self.preferredContentSize = CGSize(width: 320.0, height: 600.0)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = controllers[controllers.count-1].topViewController as? DetailViewController
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(sender: AnyObject) {
        objects.insertObject(NSDate.date(), atIndex: 0)
        let indexPath = NSIndexPath(forRow: 3, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    
    func getColorCode() -> (String, CGColorRef) {
        var value = arc4random() % 10
        puts("\(value)")
        switch(value){
        case 0:
            return ("CGFlatTeal", UIColor.CGFlatTeal)
        case 1:
            return ("CGFlatPurple", UIColor.CGFlatPurple)
        case 2:
            return ("CGFlatDarkWhite",UIColor.CGFlatDarkWhite)
        case 3:
            return ("CGFlatDarkRed",UIColor.CGFlatDarkRed)
        case 4:
            return ("CGFlatDarkYellow",UIColor.CGFlatDarkYellow)
        case 5:
            return ("CGFlatYellow",UIColor.CGFlatYellow)
        case 6:
            return ("CGFlatDarkGreen", UIColor.CGFlatDarkGreen)
        case 7:
            return ("CGFlatBlue",UIColor.CGFlatBlue)
        case 8:
            return ("CGFlatDark",UIColor.CGFlatDarkGreen)
        case 9:
            return ("CGFlatDarkOrange", UIColor.CGFlatDarkOrange)
        default:
            return ("CGFlatGray", UIColor.CGFlatGray)
        }
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                puts("selectedRow \(indexPath.row)")
//                let object = objects[indexPath.row - number] as NSDate
                let controller = (segue.destinationViewController as UINavigationController).topViewController as DetailViewController
                controller.detailItem = "hello"
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    
    // MARK: - Table View
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number + objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView .dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        if (indexPath.row == 0) {
            cell.textLabel?.text = "RGB( ) RGBA( ) and more"
            cell.textLabel?.textColor = UIColor.whiteColor()
            cell.layer.backgroundColor = UIColor.CGFlatDarkTeal
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }
        else if(indexPath.row == 1) {
            cell.textLabel?.text = "Basic Colors"
            cell.textLabel?.textColor = UIColor.whiteColor()
            cell.layer.backgroundColor = UIColor.CGFlatBlue
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }
        else if(indexPath.row == 2) {
            cell.textLabel?.text = "Material Colors"
            cell.textLabel?.textColor = UIColor.whiteColor()
            cell.layer.backgroundColor = UIColor.CGFlatTeal
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }
        else {
            let val = getColorCode()
            cell.textLabel?.text = val.0
            cell.layer.backgroundColor = val.1
        }

        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            objects.removeObjectAtIndex(indexPath.row - number)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

