//
//  ProductsVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 07/12/2020.
//

import UIKit

class ProductsVC: UIViewController {
    
    @IBOutlet weak var sBProducts: UISearchBar!
    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var tblViewProducts: UITableView!
    
    let cellReuseIdentifier = "ProductsTableViewCell"
    var isNetworkAvailable = true
    var currentCategory: ProductCategory?
    var products = [Product]()
    var selectedProduct: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.tblViewProducts.dataSource = self
        self.tblViewProducts.delegate = self
    }
    
    func configureData() {
        if let category = self.currentCategory {
            self.products.append(contentsOf: DataManager.getProductsOf(category: category.name))
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == Segues.ProductToProductDetail.rawValue) {
            if let destinationVC = segue.destination as? ProductDetailVC {
                destinationVC.currentProduct = self.selectedProduct
            }
        }
    }

}

extension ProductsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductsTableViewCell = self.tblViewProducts.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! ProductsTableViewCell
        let product = self.products[indexPath.row]
        cell.product = product
        cell.configureLayout()
        cell.configureData()
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
}

extension ProductsVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectedProduct = products[indexPath.row]
        self.performSegue(withIdentifier: Segues.ProductToProductDetail.rawValue, sender: self)
    }
}

extension ProductsVC: NetworkStatusListener {
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
