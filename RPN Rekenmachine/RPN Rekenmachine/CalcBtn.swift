//
//  CalcBtn.swift
//  RPN Rekenmachine
//
//  Created by Nathan Amerlynck on 08/10/2025.
//

import SwiftUI

struct CalcBtn: View {
    var label: String
    var action: () -> Void
    var body: some View {
        Button(action: action){
            Text(label).frame(maxWidth:.infinity, minHeight:40)
                .colorInvert()
                .foregroundStyle(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    CalcBtn(label: "3", action:{})
}
