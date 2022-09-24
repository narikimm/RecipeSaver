//
//  RecepieSaverApp.swift
//  RecepieSaver
//
//  Created by Kim Nari on 2022/09/20.
//

import SwiftUI

@main
struct RecepieSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
