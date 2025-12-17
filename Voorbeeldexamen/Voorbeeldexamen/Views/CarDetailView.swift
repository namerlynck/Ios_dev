//
//  CarDetailView.swift
//  Voorbeeldexamen
//
//  Created by Nathan Amerlynck on 17/12/2025.
//

import SwiftUI

struct CarDetailView: View {
    var car : Car
    @State var favorite : Bool?
    var body: some View {
        VStack{
            Spacer()
            Text("Details for \(car.brand) \(car.model)").font(.title)
            Spacer()
            //Text(car.brand)
            Text(car.color)
            Text(car.fuelType)
            //Text(car.imageURL)
            //Text(car.model)
            //Text("\(car.id)")
            Text("\(car.year)")
            Text("\(car.price)")
            Spacer()
        }
    }
}


