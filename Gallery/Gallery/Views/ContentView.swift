//
//  ContentView.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(GalaryDataStore.self) private var dataStore
    var body: some View {
        TabView{
            Tab("Galleries", systemImage: "building.columns"){
                GalleriesView()
            }
            Tab(dataStore.selectedGallarey?.name ?? "No Gallery selected", systemImage: "paintpalette"){
                GallerieDetailView()
            }
        }
    }
}


