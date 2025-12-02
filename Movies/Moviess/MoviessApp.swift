//
//  MoviessApp.swift
//  Moviess
//
//  Created by Nathan Amerlynck on 19/11/2025.
//

import SwiftUI

@main
struct MoviessApp: App {
    @State var dataStore = MovieDataStore()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore).environment(pathStore)
        }
    }
}
