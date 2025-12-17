//
//  VoorbeeldexamenApp.swift
//  Voorbeeldexamen
//
//  Created by Nathan Amerlynck on 17/12/2025.
//

import SwiftUI

@main
struct VoorbeeldexamenApp: App {
    @State var dataManager = DataManager()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataManager)
        }
    }
}
