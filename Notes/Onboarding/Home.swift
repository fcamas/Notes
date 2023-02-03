//
//  Home.swift
//  Notes
//
//  Created by Fredy Camas on 02/03/23.
//

import SwiftUI

struct Home: View {
    @State var hero = false
    @State var data = TrendingCard
    @State var search = ""
    @ObservedObject var dessertViewModel = DessertViewModel()
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Home()
}
