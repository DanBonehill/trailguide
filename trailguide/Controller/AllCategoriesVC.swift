//
//  AllCategoriesVC.swift
//  trailguide
//
//  Created by Daniel Bonehill on 16/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

class AllCategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    let categories = DataService.instance.getCategories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            cell.updateViews(category: categories[indexPath.row])
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        performSegue(withIdentifier: "SpecificCategoryVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let specificCategoryVC = segue.destination as? SpecificCategoryVC {
            assert(sender as? Category != nil)
            specificCategoryVC.initItems(category: sender as! Category)
        }
    }
    
    @IBAction func infoBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "toAppInfo", sender: nil)
    }
}
