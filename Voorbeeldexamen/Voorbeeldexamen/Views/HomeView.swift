//
//  HomeView.swift
//  Voorbeeldexamen
//
//  Created by Nathan Amerlynck on 17/12/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(DataManager.self) var dataManager
    @State var loading = true
    @State private var selectedCar : Car?
    var body: some View {
        NavigationSplitView{
            if loading {
                ProgressView("Loading...")
            } else {
                List(dataManager.cars, id: \.self, selection: $selectedCar){ car in
                     VStack{
                        Text(car.brand)
                        Text(car.model)
                         Text("Prijs \(car.price.rounded())")
                        Spacer()
                    }
                    
                }
            }
        } detail:{
            if let selectedCar {
                CarDetailView(car: selectedCar)
            } else {
                Text("Select a Car")
            }
        }
        .task{
            await dataManager.loadCars()
            loading = false
        }
    }
}



