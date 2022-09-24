//
//  RecipesViewModel.swift
//  RecepieSaver
//
//  Created by Kim Nari on 2022/09/24.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
