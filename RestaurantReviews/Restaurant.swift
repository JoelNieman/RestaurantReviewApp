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
    var address: String?
    var city: String?
    var states: String?
    var zipCode: String?
    var imageURL: NSURL?
    var categories: String?
    var mobileURL: NSURL?
    var price: Int?
    var phoneNumber: String?
    var rating: Int?
    
    init(name: String, address: String?, city: String?, states: String?, zipCode: String?, imageURL: NSURL?, categories: String?, mobileURL: NSURL?, price: Int?, phoneNumber: String?, rating: Int?){
        self.name = name
        self.address = address
        self.city = city
        self.states = states
        self.zipCode = zipCode
        self.imageURL = imageURL
        self.categories = categories
        self.mobileURL = mobileURL
        self.price = price
        self.phoneNumber = phoneNumber
        self.rating = rating
}

}