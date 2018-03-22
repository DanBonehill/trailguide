//
//  DetailVC.swift
//  trailguide
//
//  Created by Daniel Bonehill on 21/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    public private(set) var image: String = ""
    public private(set) var titleText: String = ""
    public private(set) var desc: String = ""
    public private(set) var bgImage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemImage.image = UIImage(named: image)
        itemTitle.text = titleText
        itemDescription.text = desc
        background.image = UIImage(named: bgImage)
    }
    
    func initItem(item: Item) {
        image = item.image
        titleText = item.title
        desc = item.description
        bgImage = "\(item.category)BG.png"
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
