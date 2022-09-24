//
//  ContentView.swift
//  RecepieSaver
//
//  Created by Kim Nari on 2022/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
