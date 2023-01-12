//
//  Dessert Model.swift
//  Notes
//
//  Created by Fredy Camas on 01/12/23.
//

import Foundation

struct Dessert:Decodable{
    var meals: [Meals]
}
struct Meals: Decodable, Identifiable {
  
    var id :String {
        let defaultID = UUID()
        return idMeal ?? "\(defaultID)"
    }
    
    var strMeal: String?
    var strMealThumb: String?
    var idMeal: String?
}
