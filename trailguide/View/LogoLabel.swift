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
    let first = "TRAIL"
    let second = "guide"
    
    override func layoutSubviews() {
        text = "\(first)\(second)"
        font = UIFont(name: "AvenirNext-DemiBold", size: font.pointSize)
//        let firstFont = [ NSAttributedStringKey.font: UIFont(name: "AvenirNext-Heavy", size: font.pointSize)]
//        let secondFont = [NSAttributedStringKey.font: UIFont(name: "AvenirNext-DemiBold", size: font.pointSize)]
        
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textAlignment = .center
        
//        let string:NSMutableAttributedString = {
//
//            let mutableString = NSMutableAttributedString(string: "TRAILguide")
//
//            mutableString.addAttribute(NSAttributedStringKey.font, value: "AvenirNext-Heavy" , range: NSRange(location: 0, length: 5))
//            mutableString.addAttribute(NSAttributedStringKey.font, value: "AvenirNext-DemiBold" , range: NSRange(location: 5, length: 5))
//            return mutableString
//        }()
//        text = String(describing: string)
//        print(string)
    }
}
