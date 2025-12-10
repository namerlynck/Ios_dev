//
//  ArtistView.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import SwiftUI

struct ArtistView: View {
    var artist : Artist
    @Environment(GalaryDataStore.self) private var dataStore
    var body: some View {
        VStack{
            Text(artist.name).font(.title).foregroundStyle(.orange)
            Divider().overlay(.orange)
            Text(artist.nationality).fontWeight(.bold)
            Text(artist.style).fontWeight(.bold)
            Text(artist.description)
            Divider().overlay(.orange)
            Text("List of art").foregroundStyle(.orange)
            
            List(artist.artworks) { artwork in
                VStack{
                    Text(artwork.title).foregroundStyle(.orange)
                    Text(artwork.description)
                }.onTapGesture {
                    dataStore.path.append(Route.artwork(artwork))
                }
            }
        }
    }
}


