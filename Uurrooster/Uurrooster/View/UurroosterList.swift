//
//  UurroosterList.swift
//  Uurrooster
//
//  Created by Nathan Amerlynck on 05/11/2025.
//

import SwiftUI

struct UurroosterList: View {
    @Environment(UurroosterDataStore.self) var dataStore
    @State var loading = true
    @State private var selectedEvent: EventModel?
    var body: some View {
        NavigationSplitView{
            if loading {
                ProgressView("Loading...").progressViewStyle(CircularProgressViewStyle())
                    .padding()
            } else {
                //dataStore.uurrooster haalt de data op
                //selection zorgt ervoor dat je 1 event kan selecteren
                List(dataStore.uurrooster, id: \.self, selection: $selectedEvent){
                    event in
                    VStack{
                        HStack{
                            if event.allDay {
                                Text(DateUtil.formatDate(date: event.startDateTime))
                                    .font(.headline)
                            } else {
                                Text(DateUtil.formatDateTime(date: event.startDateTime))
                                    .font(.headline)
                            }
                            Spacer()
                        }
                        HStack{
                            Text(event.title)
                                .font(.subheadline)
                            Spacer()
                        }
                    }
                    
                }.toolbar() {
                    ToolbarItem(placement: .primaryAction) {
                        NavigationLink { AddEventView(
                            isNew : true, event: EventModel())
                        } label: {
                            Text("+")
                        }
                    }
                }
            }
        } detail:{
            if let selectedEvent {
                UurroosterDetail(event : selectedEvent)
            } else{
                    Text("Selecteer een event")
                    .foregroundColor(.secondary)
            }
        }
        //.task zorgt ervoor dat de data wordt ingeladen
        .task {
            await dataStore.loadData()
            //loading op false zetten om animatie te stoppen en data te tonen
            loading = false
        }
    }
}
        


