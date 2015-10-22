//
//  RestaurantListTableViewController.swift
//  RestaurantReviews
//
//  Created by Joel Nieman on 10/20/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class RestaurantListTableViewController: UITableViewController {
    

    var mealType = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print(mealType) }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 }
//    This will need to return the count of the array holding the restaurants
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("restaurantCell") as! UITableViewCell!
//        cell.textLabel?.text = mealType.row
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
//        cell.textLabel?.text = listOfGroceryLists.groceryListsArray[indexPath.row].name
//        return cell
    }

//    // Override to support editing the table view.
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            // Delete the row from the data source
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        } else if editingStyle == .Insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
