//
//  GalaryDataStore.swift
//  Gallery
//
//  Created by Nathan Amerlynck on 09/12/2025.
//

import Foundation

@Observable
class GalaryDataStore {
    let galleries : [Gallery]
    private var _selectedGallery : Gallery? = nil
    var selectedGallarey : Gallery? {
        get{
            return _selectedGallery
        } set {
            path = [Route]()
            _selectedGallery = newValue
        }
    }
    var path = [Route]()
    
    init(){
        let galleriesData = GalleryData()
        galleries = galleriesData.galleries
    }
    
    func getArtWorksSelecterGallery () -> [Artwork]{
        var artworks = [Artwork]()
        if selectedGallarey != nil {
            for artist in selectedGallarey!.artists {
                artworks.append(contentsOf: artist.artworks)
            }
        }
        return artworks
    }
    
    func getArtist (artwork: Artwork) -> Artist? {
        var artist : Artist? = nil
        for gallery in galleries{
            for galleryArtist in gallery.artists {
                for artistArtwork in galleryArtist.artworks {
                    if artistArtwork.id == artwork.id{
                        artist = galleryArtist
                    }
                }
            }
        }
        return artist
    }
    
}
