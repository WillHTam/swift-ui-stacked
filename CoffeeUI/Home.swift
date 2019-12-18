//
//  ContentView.swift
//  CoffeeUI
//
//  Created by William on 12/18/19.
//  Copyright © 2019 William T. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    // dictionary of string keys and value of array of drinks
    // ie store as Hot:[Latte, Capuccino, Espresso]
    var categories:[String:[Drink]] {
        .init(grouping: drinkData, by: {$0.category.rawValue})
    }
    
    var body: some View {
        NavigationView {
            List (categories.keys.sorted(), id: \String.self) {
                key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.bottom)
            }
            .navigationBarTitle("Coffee")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environment(\.colorScheme, .dark)
    }
}
