//
//  ContentView.swift
//  lab2
//
//  Created by leerling on 30/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("departure", systemImage: "airplane.departure"){
                Image(systemName: "airplane.departure")
                //flightView()
            }
            Tab("home", systemImage: "house"){
                Image(systemName: "airplane")
                HomeView()
            }
            Tab("arrival", systemImage: "airplane.arrival"){
                departureView()
            }
            
        }
       
    }
}

#Preview {
    ContentView()
}
