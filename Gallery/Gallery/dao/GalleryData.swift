//
//  GalleryData.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import Foundation

@Observable
class GalleryData{
    let galleries : [Gallery]
    
    init(){
        let galleriesData : Galleries = load("galleries.json")
        galleries = galleriesData.galleries
    }
}
