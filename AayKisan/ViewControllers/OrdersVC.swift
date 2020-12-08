//
//  OrdersVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 08/12/2020.
//

import UIKit

class OrdersVC: UIViewController {

    @IBOutlet weak var sBOrders: UISearchBar!
    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var tblViewOrders: UITableView!
    
    let cellReuseIdentifier = "OrderTableViewCell"
    var isNetworkAvailable = true
    var orders = [Order]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.tblViewOrders.dataSource = self
        self.tblViewOrders.delegate = self
    }
    
    func configureData() {
        self.orders.append(contentsOf: DataManager.orders)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension OrdersVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:OrderTableViewCell = self.tblViewOrders.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! OrderTableViewCell
        let order = self.orders[indexPath.row]
        cell.currentOrder = order
        cell.configureLayout()
        cell.configureData()
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.orders.count
    }
}

extension OrdersVC: UITableViewDelegate {
    
}

extension OrdersVC: NetworkStatusListener {
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
