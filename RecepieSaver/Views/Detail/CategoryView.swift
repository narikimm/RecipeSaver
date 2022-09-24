//
//  CategoryView.swift
//  RecepieSaver
//
//  Created by Kim Nari on 2022/09/22.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    var category: Category
    
    //Computed property
    var recipe: [Recipe] {
        return recipesVM.recipes.filter{ $0.category == category.rawValue}
    }
    var body: some View {
        ScrollView {
            RecipeList(recipes:recipe)
            }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
