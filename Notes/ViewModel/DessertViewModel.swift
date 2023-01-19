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
    
    init() {
        fetchDessert()
    }
    
    // MARK: - Fetch Dessert Meal
    func fetchDessert() {
        mainCardContainer = []
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else {return }
        URLSession.shared.fetchData(for: url) { (result: Result<Dessert, Error>) in
            switch result {
            case .success(let results):
                DispatchQueue.main.async {
                    print(results.meals)
                    for meal in results.meals {
                        let name = meal.strMeal ?? ""
                        let image = meal.strMealThumb ?? ""
                        let id = meal.id
                        self.mainCardContainer.append(DessertModel.Card(id: id, imageURL: image, name: name))
                        
                    }
                    self.cards = self.mainCardContainer
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
