//
//  Route.swift
//  Moviess
//
//  Created by Nathan Amerlynck on 19/11/2025.
//

import Foundation

enum Route: Hashable {
    case movie(Movie)
    case director(Director)
    case actor(Actor)
}
