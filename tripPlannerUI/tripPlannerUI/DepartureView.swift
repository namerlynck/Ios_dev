//
//  DepartureView.swift
//  tripPlannerUI
//
//  Created by Nathan Amerlynck on 01/10/2025.
//

import SwiftUI

struct DepartureView: View {
    let flightInfo: FlightInfo
    var body: some View {
        Grid{
            GridRow{ //heading
                Text(flightInfo.depCityCode)
                Text(" ")
                Text(flightInfo.arrCityCode)
            }
            GridRow{ //tijd
                Text(flightInfo.depCityName)
                Image(systemName: "airplane")
                Text(flightInfo.arrCityName)
            }
            GridRow{ //tijd
                Text(flightInfo.depTime)
                Text(" ")
                Text(flightInfo.arrTime)
            }
            GridRow{ //stad
                Text("flight")
                Text("gate")
                Text("seat")
            }
            GridRow{ //stad
                Text(flightInfo.flight)
                Text(flightInfo.gate)
                Text(flightInfo.seat)
            }
        }
     }
}
