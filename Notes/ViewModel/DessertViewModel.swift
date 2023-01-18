//
//  DessertViewModel.swift
//  Notes
//
//  Created by Fredy Camas on 01/17/23.
//

import Foundation

class DessertViewModel: ObservableObject {
    
    @Published var cards: [DessertModel.Card] = []
    @Published var detailcard = [DessertModel.Detail]()
    
    var mainCardContainer = [DessertModel.Card]()
    let searchFields: [KeyPath<DessertModel.Card, String>] = [\DessertModel.Card.name]
    
}
