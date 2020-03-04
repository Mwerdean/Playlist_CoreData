//
//  SongController.swift
//  PlaylistCoredata
//
//  Created by Matthew Werdean on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation

class SongController {
    
    // MARK: - CRUD
    func createSong(with title: String, artist: String, addto playlist: Playlist) {
        Song(artist: artist, title: title, playlists: playlist)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }
    
    func deleteSong(song: Song) {
        CoreDataStack.context.delete(song)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }
    
} // End of class
