//
//  SpecificCategoryVC.swift
//  trailguide
//
//  Created by Daniel Bonehill on 17/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

class SpecificCategoryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var itemCollection: UICollectionView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    public private(set) var items = [Item]()
    public private(set) var titleText: String = ""
    public private(set) var image: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemCollection.delegate = self
        itemCollection.dataSource = self
        titleLbl.text = titleText
        categoryImage.image = UIImage(named: image)
    }
    
    func initItems(category: Category) {
        items = DataService.instance.getItems(forCategory: category.title)
        titleText = "\(category.title) GEAR"
        image = category.image
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as? ItemCell {
            let item = items[indexPath.row]
            cell.updateViews(item: item)
            cell.setupView()
            return cell
        }
        return ItemCell()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
