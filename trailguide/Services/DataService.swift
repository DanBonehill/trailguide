//
//  DataService.swift
//  trailguide
//
//  Created by Daniel Bonehill on 17/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private var categories = [
        Category(title: "HIKING", image: "hikingBG.png"),
        Category(title: "CAMPING", image: "campingBG.png"),
        Category(title: "DIVING", image: "divingBG.png"),
        Category(title: "RV LIFE", image: "rvBG.png"),
        Category(title: "FISHING", image: "fishingBG.png"),
        Category(title: "BACKPACKS", image: "backpackingBG.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
