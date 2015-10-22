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
        var cell = tableView.dequeueReusableCellWithIdentifier("restaurantCell") as UITableViewCell!
//        cell.textLabel?.text = mealType.row
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
//        cell.textLabel?.text = listOfGroceryLists.groceryListsArray[indexPath.row].name
        return cell
    }
}