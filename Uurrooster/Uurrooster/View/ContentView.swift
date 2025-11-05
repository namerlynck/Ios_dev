//
//  ContentView.swift
//  Uurrooster
//
//  Created by Nathan Amerlynck on 04/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State var dataStore = UurroosterDataStore()
    var body: some View {
        UurroosterList().environment(dataStore)
    }
}


