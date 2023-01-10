//
//  Card.swift
//  Notes
//
//  Created by Fredy Camas on 01/10/23.
//

import Foundation

struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "$25.00"
    var expand : Bool
}
