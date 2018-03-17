//
//  AppInfoVC.swift
//  trailguide
//
//  Created by Daniel Bonehill on 17/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

class AppInfoVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backBtn.layer.cornerRadius = 10
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
