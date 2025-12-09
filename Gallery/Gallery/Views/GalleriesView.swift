//
//  GalleriesView.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import SwiftUI

struct GalleriesView: View {
    @Environment(GalaryDataStore.self) private var dataStore
    var body: some View {
        @Bindable var dataStore = dataStore
    }
}

