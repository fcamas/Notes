//
//  AllTabsView.swift
//  Notes
//
//  Created by Fredy Camas on 02/05/23.
//

import SwiftUI

import SwiftUI

struct TabBarView: View {
    @StateObject var viewModel: TabBarViewModel
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            
        }
    }
}
