//
//  PathStore.swift
//  Moviess
//
//  Created by Nathan Amerlynck on 19/11/2025.
//

import Foundation

@Observable
class PathStore {
    var path = [Route]()
    
    func reduceArray(index: Int){
        path = Array(path.prefix(index + 1))
    }
    
    func clear() {
        path.removeAll()
    }
}
