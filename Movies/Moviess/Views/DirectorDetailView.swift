//
//  DirectorDetailView.swift
//  Moviess
//
//  Created by Nathan Amerlynck on 02/12/2025.
//

import SwiftUI

struct DirectorDetailView: View {
    var director : Director? = nil
    @Environment(MovieDataStore.self) private var dataStore
    
    var body: some View {
        VStack{
            Text("Director: \(director!.firstName)")
        }
    }
}
