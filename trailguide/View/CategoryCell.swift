//
//  CategoryCell.swift
//  trailguide
//
//  Created by Daniel Bonehill on 17/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryTitleLbl: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    func updateViews(category: Category) {
        categoryTitleLbl.text = category.title
        categoryImage.image = UIImage(named: category.image)
    }
}
