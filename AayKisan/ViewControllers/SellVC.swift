//
//  SellVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//

import UIKit

class SellVC: UIViewController {

    @IBOutlet weak var vDemands: UIView!
    @IBOutlet weak var vOrders: UIView!
    @IBOutlet weak var vProducts: UIView!
    @IBOutlet weak var btnDemands: UIButton!
    @IBOutlet weak var btnOrders: UIButton!
    @IBOutlet weak var btnProducts: UIButton!
    
    var isNetworkAvailable = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.vDemands.applyCustomShadowEffectToView()
        self.vOrders.applyCustomShadowEffectToView()
        self.vProducts.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == Segues.SellToProducts.rawValue) {
            if let destinationVC = segue.destination as? ProductsVC {
                destinationVC.currentCategory = DataManager.mockCategories[0]
            }
        }
    }

    @IBAction func onBtnDemandsPressed(_ sender: Any) {
        self.performSegue(withIdentifier: Segues.SellToProducts.rawValue, sender: self)
    }
    
    @IBAction func onBtnOrdersPressed(_ sender: Any) {
        self.performSegue(withIdentifier: Segues.SellToOrders.rawValue, sender: self)
    }
    @IBAction func onBtnProductsPressed(_ sender: Any) {
        self.performSegue(withIdentifier: Segues.SellToDemands.rawValue, sender: self)
    }
    
}
extension SellVC: NetworkStatusListener {
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
