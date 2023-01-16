//
//  TabBar.swift
//  Notes
//
//  Created by Fredy Camas on 01/16/23.
//

import Foundation

class TabBarViewModel: ObservableObject {
    enum Tab {
        case home, search, favorites, profile
    }
    
    @Published var selectedTab: Tab
    
    init() {
        self.selectedTab = .home
    }
}
