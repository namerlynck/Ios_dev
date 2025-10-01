//
//  ContentView.swift
//  tripPlannerUI
//
//  Created by Nathan Amerlynck on 01/10/2025.
//

import SwiftUI

struct ContentView: View {
    let arrFlightInfo = FlightInfo(depCityCode: "BAR", depCityName: "Barcelona", depTime: "13:05", arrCityCode: "BRU", arrCityName: "Brussel", arrTime: "15:15", flight: "SN205", gate: "XD-30", seat: "17C", passName: "Dirk Hostens", flightClass: "Business", flightDate: "1/09/2024")
    let depFlightInfo = FlightInfo(depCityCode: "BAR", depCityName: "Barcelona", depTime: "13:05", arrCityCode: "BRU", arrCityName: "Brussel", arrTime: "15:15", flight: "SN205", gate: "XD-30", seat: "17C", passName: "Dirk Hostens", flightClass: "Business", flightDate: "1/09/2024")
    var body: some View {
        TabView{
            Tab("departure", systemImage: "airplane.departure"){
                DepartureView(flightInfo: depFlightInfo)
            }
            Tab("home", systemImage: "house"){
                Image(systemName: "airplane")
                HomeView()
            }
            Tab("arrival", systemImage: "airplane.arrival"){
                DepartureView(flightInfo: arrFlightInfo)
            }
        }
    }
}

#Preview {
    ContentView()
}
