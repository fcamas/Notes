//
//  CountryCode.swift
//  Notes
//
//  Created by Fredy Camas on 10/26/23.
//

import Foundation

struct CountryCode{
    var code = "+1"
    var name: String
    var dial_code: String
    
    var id: String {
        return code
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(code)
    }
}
