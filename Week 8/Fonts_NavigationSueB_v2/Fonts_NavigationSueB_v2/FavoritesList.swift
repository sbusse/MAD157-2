//
//  FavoritesList.swift
//  Fonts_NavigationSueB_v2
//
//  Created by student on 3/30/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import Foundation
import UIKit

class FavoritesList {
    static let sharedFavoritesList = FavoritesList ()
    private(set) var favorites:[String]
    
    init() {
        let defaults = UserDefaults.standard
        let storedFavorites = defaults.object(forKey: "favorites")
        as? [String]
        favorites = storedFavorites != nil ? storedFavorites! : []
    }
    
    func addFavorites(fontName: String) {
        if !favorites.contains(fontName) {
            favorites.append(fontName)
            saveFavorites()
        }
    }
    
    func removeFavorite(fontName: String) {
        if let index = favorites.firstIndex(of: fontName) {
            favorites.remove(at: index)
            saveFavorites()
        }
    }
    
    private func saveFavorites() {
        let defaults = UserDefaults.standard
        defaults.set(favorites, forKey: "favorites")
        defaults.synchronize()
    }
}
