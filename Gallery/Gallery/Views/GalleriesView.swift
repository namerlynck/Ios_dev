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
        
        List(dataStore.galleries, id: \.self, selection: $dataStore.selectedGallarey) { gallery in
            VStack{
                Text(gallery.name).font(.title).fontWeight(.bold).foregroundStyle(.orange)
                Text(gallery.location).font(.subheadline)
                Text(gallery.description).font(.footnote).lineLimit(1).foregroundStyle(.gray)
            }.padding()
        }
    }
}

 
