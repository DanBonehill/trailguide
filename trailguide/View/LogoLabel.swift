//
//  LogoLabel.swift
//  trailguide
//
//  Created by Daniel Bonehill on 16/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

@IBDesignable
class LogoLabel: UILabel {
    override func layoutSubviews() {
        font = UIFont(name: "AvenirNext-DemiBold", size: 25)
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textAlignment = .center
    }
}
