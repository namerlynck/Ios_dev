//
//  departureView.swift
//  lab2
//
//  Created by leerling on 30/09/2025.
//

import SwiftUI

struct departureView: View {
    var body: some View {
            Grid{
                GridRow{ //heading
                    Text("BCN")
                    Text(" ")
                    Text("BRU")
                }
                GridRow{ //tijd
                    Text("Barcelona")
                    Image(systemName: "airplane")
                    Text("Brussel")
                }
                GridRow{ //tijd
                    Text("13:05")
                    Text(" ")
                    Text("15:15")
                }
                GridRow{ //stad
                    Text("flight")
                    Text("gate")
                    Text("seat")
                }
                GridRow{ //stad
                    Text("value")
                    Text("value")
                    Text("value")
                }
            }
        }
    }

#Preview {
    departureView()
}
