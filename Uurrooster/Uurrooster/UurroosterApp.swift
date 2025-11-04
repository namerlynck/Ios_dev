//
//  UurroosterApp.swift
//  Uurrooster
//
//  Created by Nathan Amerlynck on 04/11/2025.
//

import SwiftUI

@main
struct UurroosterApp: App {
    @State var uurroosterDataStore = UurroosterDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(uurroosterDataStore)
        }
    }
}
