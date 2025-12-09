//
//  GalleryApp.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import SwiftUI

@main
struct GalleryApp: App {
    @State var dataStore = GaleryData
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
