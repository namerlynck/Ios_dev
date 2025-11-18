//
//  UurroosterDetail.swift
//  Uurrooster
//
//  Created by Nathan Amerlynck on 05/11/2025.
//

import SwiftUI

struct UurroosterDetail: View {
    //var event : EventModel
    @State private var isEditing = false
    var event: EventModel   // <<< this must be a binding!
    
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
                Text(event.location)
                Spacer()
            }
            VStack{
                //met if want check if all day
                if event.allDay {
                    HStack{
                        Text("Volledige dag")
                        Spacer()
                        Text(DateUtil.formatDate(date: event.startDateTime))
                    }
                } else{
                    HStack{
                        Text("Start")
                        Spacer()
                        Text(DateUtil.formatDateTime(date: event.startDateTime))
                    }.padding(.bottom, 5)
                    HStack{
                        Text("Einde")
                        Spacer()
                        Text(DateUtil.formatDateTime(date: event.endDateTime))
                        
                    }
                }
                Divider()
                HStack{
                    event.type == 0
                    ? Image(systemName: "a.circle")
                    : Image(systemName: "c.circle")
                }
                
                
            }
        }.padding()
            .toolbar() {
                ToolbarItem(placement: .primaryAction) {
                    NavigationLink { AddEventView(
                        isNew : false, event: EventModel(from: event))
                    } label: {
                        Text("...")
                    }
                }
            }
    }
}

