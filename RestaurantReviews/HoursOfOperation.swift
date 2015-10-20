//
//  HoursOfOperation.swift
//  RestaurantReviews
//
//  Created by Joel Nieman on 10/19/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import Foundation



struct HoursOfOperation {
    var monday    = ["Monday":    (0.0,0.0)]
    var tuesday   = ["Tuesday":   (0.0,0.0)]
    var wednesday = ["Wednesday": (0.0,0.0)]
    var thursday  = ["Thursday":  (0.0,0.0)]
    var friday    = ["Friday":    (0.0,0.0)]
    var saturday  = ["Saturday":  (0.0,0.0)]
    var sunday    = ["Sunday":    (0.0,0.0)]
    

}

// This struct is created to set the hours of operation by day of the week. I've set this up as a dictionary containting the day for the key and a tupel value of Doubles for the hours of operation. The doubles will be set to the actual open and close times of the business on that day in a 24 hr format (i.e., 23.00 = 11:00pm). A conversion will happen afterwards to make it more readable. 0.0 - 0.0 will be translated to "Closed all day"

// There are other options for the time, such as just making them strings (i.e., "12:00pm", "11:30pm"). Not sure if this is easier/cleaner or not but we should talk about it.


