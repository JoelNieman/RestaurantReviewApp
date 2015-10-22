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

    @IBOutlet weak var categoryPicker: UIPickerView!

    private let mealType = ["Breakfast", "Lunch", "Dinner"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func seeResultsButtonPressed(sender: AnyObject) {
        let mealTypeRow = categoryPicker.selectedRowInComponent(0)
        mealTypeSelected = mealType[mealTypeRow] }
    
        // the row and categorySelected constants will be used to call restaurants from the yelp API.

        // ERIKA's SUGGESTION IS TO REPLACE THIS FUNCTION WITH A PREPARE FOR SEGUE FUNCTION AND INCLUDE THE SAME CODES + PROVIDE THE VALUE FOR THE API CALL TO YELP.

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView:UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mealType.count }

    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return mealType[row] }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as! RestaurantListTableViewController
        vc.mealType = mealTypeSelected

    }
}
