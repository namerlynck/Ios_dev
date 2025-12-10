//
//  ArtView.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import SwiftUI

struct ArtView: View {
    var artwork : Artwork
    @Environment(GalaryDataStore.self) private var dataStore
    var body: some View {
        VStack{
            Text(artwork.title).font(.title).fontWeight(.bold).foregroundStyle(.orange)
            Divider().overlay(.orange)
            Text(artwork.medium).fontWeight(.bold)
            Text(artwork.dimensions).fontWeight(.bold)
            Text(artwork.description)
            
            VStack(alignment: .leading){
                Divider().overlay(.orange)
                Text("artist: \(dataStore.getArtist(artwork: artwork)?.name ?? "Unknown artist")")
                    .onTapGesture {
                        let artist = dataStore.getArtist(artwork: artwork)
                        if artist != nil {
                            dataStore.path.append(.artist(artist!))
                        }
                    }.padding(.leading)
            }
            Divider().overlay(.orange)
            Text("List of other art")
            List(dataStore.getArtWorksSelecterGallery()) { artworkInList in
                if artwork.artworkID != artworkInList.artworkID{
                    VStack{
                        Text(artworkInList.title).font(.title).foregroundStyle(.orange)
                        Text(artworkInList.description).lineLimit(1)
                    }.onTapGesture {
                        dataStore.path.append(Route.artwork(artworkInList))
                    }
                }
            }
        }
    }
}


