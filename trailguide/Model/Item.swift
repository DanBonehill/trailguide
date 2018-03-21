//
//  Item.swift
//  trailguide
//
//  Created by Daniel Bonehill on 17/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import Foundation

struct Item {
    public private(set) var title: String
    public private(set) var image: String
    public private(set) var description: String
    
    init(title: String, image: String, description: String) {
        self.title = title
        self.image = image
        self.description = description
    }
}
