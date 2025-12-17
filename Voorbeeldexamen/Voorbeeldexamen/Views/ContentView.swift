//
//  ContentView.swift
//  Voorbeeldexamen
//
//  Created by Nathan Amerlynck on 17/12/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            Tab("Home", systemImage: "Home"){
               HomeView()
            }
            Tab("Favorites", systemImage: "Favorites"){
              FavoritesView()
            }
            Tab("Settings", systemImage: "Settings"){
                SettingsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
