//
//  AddEventView.swift
//  Uurrooster
//
//  Created by Nathan Amerlynck on 05/11/2025.
//

import SwiftUI

struct AddEventView: View {
    let isNew : Bool
    @Environment(UurroosterDataStore.self) var dataStore
    @State var event : EventModel
    var body: some View {
        Text("addEventView")
    }
}
