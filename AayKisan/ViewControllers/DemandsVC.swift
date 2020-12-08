//
//  DemandsVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 08/12/2020.
//

import UIKit

class DemandsVC: UIViewController {

    
    @IBOutlet weak var sBDemands: UISearchBar!
    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var tblViewDemands: UITableView!
    
    let cellReuseIdentifier = "DemandTableViewCell"
    var isNetworkAvailable = true
    var demands = [Demand]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.tblViewDemands.dataSource = self
        self.tblViewDemands.delegate = self
    }
    
    func configureData() {
        self.demands.append(contentsOf: DataManager.demands)
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

extension DemandsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:DemandTableViewCell = self.tblViewDemands.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! DemandTableViewCell
        let demand = self.demands[indexPath.row]
        cell.currentDemand = demand
        cell.configureLayout()
        cell.configureData()
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.demands.count
    }
}

extension DemandsVC: UITableViewDelegate {
    
}

extension DemandsVC: NetworkStatusListener {
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
