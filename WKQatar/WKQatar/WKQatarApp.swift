//
//  WKQatarApp.swift
//  WKQatar
//
//  Created by Nathan Amerlynck on 15/10/2025.
//

import SwiftUI

@main
struct WKQatarApp: App {
    @State var wkDataStore = WKDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(wkDataStore)
        }
    }
}
