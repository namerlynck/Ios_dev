//
//  ContentView.swift
//  WKQatar
//
//  Created by Nathan Amerlynck on 15/10/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(WKDataStore.self  ) var wkDataStore
    @State var selectedCountry: String? = nil
    var body: some View {
        /*wkDataStore.getAllTeams().forEach{
         element in
         Text(element)}
         }*/
        VStack{
            Text("Select your favorite team...")
            
            NavigationView {
                List(wkDataStore.getAllTeams(), id: \.self) { team in
                    Text(team)
                }
                .navigationTitle("Teams")
            }
        }.padding()
    }
}

