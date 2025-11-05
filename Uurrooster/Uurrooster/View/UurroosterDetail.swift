//
//  UurroosterDetail.swift
//  Uurrooster
//
//  Created by Nathan Amerlynck on 05/11/2025.
//

import SwiftUI

struct UurroosterDetail: View {
    var event : EventModel
    var body: some View {
        VStack{
            HStack{
                HStack{
                    Spacer()
                    Text(event.title)
                        .foregroundColor(Color.white)
                        .padding(.all, 8)
                    Spacer()
                }
                .background(Color.red)
                .cornerRadius(10)
            }.padding(.all, 5)
        }
        VStack{
            Divider()
            HStack{
                if let location = event.location, !location.isEmpty {
                    Text(location)
                } else {
                    Text("Unknown location")
                }
            }
            HStack{
                //met if want check if all day
            }
        }
    }
}
