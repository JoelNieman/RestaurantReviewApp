//
//  RestaurantListTableViewController.swift
//  RestaurantReviews
//
//  Created by Joel Nieman on 10/20/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class RestaurantsListTableViewController: UITableViewController {
    
    var selectedTypeIndex = Int()
    

    var userMealType = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedTypeIndex)
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("restaurantCell", forIndexPath: indexPath)
//        cell.textLabel?.text = breakfastRestArray[indexPath.row].name
        return cell
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