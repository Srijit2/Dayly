//
//  Food.swift
//  Dayly
//
//  Created by Srijit Boinapally on 4/1/20.
//  Copyright © 2020 Srijit. All rights reserved.
//

import Foundation

struct FoodResponse:Decodable {
    var hints:[Foods]
}

struct Foods:Decodable {
    var food:FoodInfo
   
}

struct FoodInfo:Decodable {
    var label:String
    var nutrients:NutrientInfo
    var image:String
}

struct NutrientInfo:Decodable{
    var ENERC_KCAL: Double
    var PROCNT: Double
    var FAT: Double
    var CHOCDF: Double
    var FIBTG: Double
}
