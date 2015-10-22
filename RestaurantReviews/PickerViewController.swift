//
//  PickerViewController.swift
//  RestaurantReviews
//
//  Created by Joel Nieman on 10/20/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    var mealTypeSelected = ""
    var mealTypeSelectedIndex = Int()
    var businesses: [Business]!
    var breakfastRestArray = [Restaurant]()
    var lunchRestArray = [Restaurant]()
    var dinnerRestArray = [Restaurant]()


    @IBOutlet weak var categoryPicker: UIPickerView!

    private let mealType = ["Breakfast", "Lunch", "Dinner"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Business.searchWithTerm("Breakfast", sort: .Distance, categories: [], deals: true) { (businesses: [Business]!, error: NSError!) -> Void in
            self.businesses = businesses
            for business in businesses {
                self.breakfastRestArray.append(Restaurant(name: business.name!, address: business.address, city: business.city, states: business.state, zipCode: business.zipCode, imageURL: business.imageURL, categories: business.categories, mobileURL: business.mobile_url, price: 0, phoneNumber: business.phone, rating: 0))
            }
        }
        
        Business.searchWithTerm("Lunch", sort: .Distance, categories: [], deals: true) { (businesses: [Business]!, error: NSError!) -> Void in
            self.businesses = businesses
            
            for business in businesses {
                self.lunchRestArray.append(Restaurant(name: business.name!, address: business.address, city: business.city, states: business.state, zipCode: business.zipCode, imageURL: business.imageURL, categories: business.categories, mobileURL: business.mobile_url, price: 0, phoneNumber: business.phone, rating: 0))
            }
            
        }
        
        Business.searchWithTerm("Dinner", sort: .Distance, categories: [], deals: true) { (businesses: [Business]!, error: NSError!) -> Void in
            self.businesses = businesses
            
            for business in businesses {
                self.dinnerRestArray.append(Restaurant(name: business.name!, address: business.address, city: business.city, states: business.state, zipCode: business.zipCode, imageURL: business.imageURL, categories: business.categories, mobileURL: business.mobile_url, price: 0, phoneNumber: business.phone, rating: 0))
            }
            
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func seeResultsButtonPressed(sender: AnyObject) {
        let mealTypeRow = categoryPicker.selectedRowInComponent(0)
        mealTypeSelected = mealType[mealTypeRow]
        mealTypeSelectedIndex = mealTypeRow
        print(mealTypeSelectedIndex)
    }
    
        // the row and categorySelected constants will be used to call restaurants from the yelp API.

        // ERIKA's SUGGESTION IS TO REPLACE THIS FUNCTION WITH A PREPARE FOR SEGUE FUNCTION AND INCLUDE THE SAME CODES + PROVIDE THE VALUE FOR THE API CALL TO YELP.

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView:UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mealType.count }

    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return mealType[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "seeTableView" {
            print("baba")
        let vc = segue.destinationViewController as! RestaurantsListTableViewController
        vc.selectedTypeIndex = mealTypeSelectedIndex
        }
    }
}
