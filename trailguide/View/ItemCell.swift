//
//  ItemCell.swift
//  trailguide
//
//  Created by Daniel Bonehill on 17/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
    
    func setupView() {
        self.layer.cornerRadius = 10
    }

    func updateViews(item: Item) {
        itemImage.image = UIImage(named: item.image)
    }
}
