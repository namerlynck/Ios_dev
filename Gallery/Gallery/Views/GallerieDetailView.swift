//
//  GallerieDetailView.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import SwiftUI

struct GallerieDetailView: View {
    @Environment(GalaryDataStore.self) private var dataStore
    
    var body: some View {
        @Bindable var dataStore = dataStore
        if dataStore.selectedGallarey == nil {
            Text("No Gallery selected")
        } else {
            NavigationStack(path: $dataStore.path){
                VStack{
                    Text(dataStore.selectedGallarey!.name).font(.title).foregroundStyle(.orange)
                    Divider().overlay(.orange)
                    Text(dataStore.selectedGallarey!.location).fontWeight(.bold)
                    Text(dataStore.selectedGallarey!.description)
                    Divider().overlay(.orange)
                    Text("List of artist").font(.title2)
                                          .foregroundStyle(.orange)
            
                    List(dataStore.selectedGallarey!.artists) { artist in
                        VStack{
                            Text(artist.name).foregroundStyle(.orange)
                            Text(artist.nationality)
                        }.onTapGesture {
                            dataStore.path.append(Route.artist(artist))
                        }
                    }
                }.navigationDestination(for: Route.self) { route in
                    switch route {
                    case let .artist(artist): ArtistView(artist: artist)
                    case let .artwork(artwork): ArtView(artwork: artwork)
                    }
                }
            }
        }
    }
}


