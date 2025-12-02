//
//  MovieDetailView.swift
//  Moviess
//
//  Created by Nathan Amerlynck on 02/12/2025.
//

import SwiftUI

struct MovieDetailView: View {
    var movie : Movie
    
    var body: some View {
        VStack{
            Text("\(movie.title)").font(.title)
            Text("\(movie.description)")
            Divider()
            Text("Actors")
            ForEach(movie.actors, id: \.self){ actor in
                NavigationLink("\(actor.firstName) \(actor.lastName)" , value:
                                Route.actor(actor)).buttonStyle(LinkButtonStyle()).foregroundStyle(.red)
            }
            Text("Director")
            NavigationLink(movie.director.firstName, value:
                            Route.director(movie.director)).buttonStyle(LinkButtonStyle()).foregroundStyle(.red)
            Divider()
            Text("Overiew navigationStack")
            PathView()
        }
    }
}


