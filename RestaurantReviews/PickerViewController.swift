//
//  PickerViewController.swift
//  RestaurantReviews
//
//  Created by Joel Nieman on 10/20/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var categoryPicker: UIPickerView!
    private let categoryComponent = 0
    private let priceComponent = 1
    private let categories = ["Breakfast", "Lunch", "Dinner", "Late Night"]
    private let prices = ["Cheap", "Average", "Expensive"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func seeResultsButtonPressed(sender: AnyObject) {

        let categoryRow = categoryPicker.selectedRowInComponent(0)
        let priceRow = categoryPicker.selectedRowInComponent(1)
        
        let categorySelected = categories[categoryRow]
        let priceSelected = prices[priceRow]
        
        // the row and categorySelected constants will be used to call restaurants from the yelp API.

        // ERIKA's SUGGESTION IS TO REPLACE THIS FUNCTION WITH A PREPARE FOR SEGUE FUNCTION AND INCLUDE THE SAME CODES + PROVIDE THE VALUE FOR THE API CALL TO YELP.
        
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView:UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == categoryComponent {
            return categories.count
        } else {
            return prices.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == categoryComponent {
            return categories[row]
        } else {
            return prices[row]
        }
    }
    
    @IBAction override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        <#code#>
    }
}
