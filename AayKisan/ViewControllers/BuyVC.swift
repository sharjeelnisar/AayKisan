//
//  BuyVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//

import UIKit

class BuyVC: UIViewController {

    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var tblViewCategories: UITableView!
    
    let cellReuseIdentifier = "CategoryTableViewCell"
    var isNetworkAvailable = true
    var categories = [ProductCategory]()
    var selectedCategory: ProductCategory?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.tblViewCategories.dataSource = self
        self.tblViewCategories.delegate = self
    }
    
    func configureData() {
        self.categories.append(contentsOf: DataManager.mockCategories)
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == Segues.CategoryToProducts.rawValue) {
            if let destinationVC = segue.destination as? ProductsVC {
                destinationVC.currentCategory = self.selectedCategory
            }
        }
    }

}

extension BuyVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CategoryTableViewCell = self.tblViewCategories.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! CategoryTableViewCell
        let category = self.categories[indexPath.row]
        cell.category = category
        cell.configureLayout()
        cell.configureData()
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count
    }
}

extension BuyVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectedCategory = categories[indexPath.row]
        self.performSegue(withIdentifier: Segues.CategoryToProducts.rawValue, sender: self)
    }
}

extension BuyVC: NetworkStatusListener {
    func networkStatusDidChange(status: Reachability.NetworkStatus) {
        switch status {
        case .notReachable:
            DispatchQueue.main.async {
                self.isNetworkAvailable = false
            }
        case .reachableViaWiFi:
            DispatchQueue.main.async {
                self.isNetworkAvailable = true
            }
        case .reachableViaWWAN:
            DispatchQueue.main.async {
                self.isNetworkAvailable = true
            }
        }
    }
}

