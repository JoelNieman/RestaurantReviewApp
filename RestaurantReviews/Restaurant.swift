//
//  Restaurant.swift
//  RestaurantReviews
//
//  Created by Joel Nieman on 10/19/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import Foundation

class Restaurant {

    var name: String
    //    Didn't set name as an optional because I'm not sure if it is necessary yet. Let's talk about this.
    
    var address: String?
    //    var location:
    //    need to figure out the data type of this. Probably depends on what comes from the API call.
    //    var distance: Double?
    var phoneNumber: String?

    var cuisineType: String?
    //    i.e., american, chinese, etc.
    
    var breakfast: Bool?
    var lunch: Bool?
    var dinner: Bool?
    var bar: Bool?
    //    true or false indicating if they serve these categories of meals or have a bar.
    
    var rating: Int?
    var price: Int?
    //    these will be 1-5 values which will be converted to bananas. Considering creating an enum for this to restrict the values to 1,2,3,4, & 5.
    
    init(name: String) {
    self.name = name }
    //    Only initializing the name because the rest of the values are optional. I'm avoiding requiring the user to add all the values to add a new restaurant. only the name is necessary this way. Open to thoughts.
    
}

