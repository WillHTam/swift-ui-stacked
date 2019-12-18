//
//  Drink.swift
//  CoffeeUI
//
//  Created by William on 12/18/19.
//  Copyright © 2019 William T. All rights reserved.
//

import Foundation

// Need Identifiable to display things in a list
// Need Codable to map the JSON data
// Need Hashable for efficient categorization
struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category:  String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
