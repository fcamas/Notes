//
//  DayModel.swift
//  Notes
//
//  Created by Fredy Camas on 01/15/23.
//

import Foundation

struct DayModel: Identifiable {
    var id: UUID
    var row: Int
    var number: Int
    
    static var `default`: DayModel { DayModel(id: UUID(), row: 0, number: 0) }
}
