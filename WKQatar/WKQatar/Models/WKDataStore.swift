//
//  WKDataStore.swift
//  WKQatar
//
//  Created by Nathan Amerlynck on 15/10/2025.
//

import Foundation
@Observable
class WKDataStore{
    let json : [WKResult] =
    load("WKResultsQatar.json")
    
    func getAllTeams() -> [String]{
        let teams = json.flatMap{ [$0.homeTeam, $0.awayTeam] }
        let uniqueTeams = Array(Set(teams))
        return uniqueTeams.sorted()
    }
}
