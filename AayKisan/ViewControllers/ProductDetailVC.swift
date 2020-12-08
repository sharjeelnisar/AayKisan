//
//  ProductDetailVC.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 07/12/2020.
//

import UIKit

class ProductDetailVC: UIViewController {
    
    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var iVCover: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var iVVerified: UIImageView!
    @IBOutlet weak var lblGrade: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblUnit: UILabel!
    @IBOutlet weak var lblQuantity: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var btnAddToCart: UIButton!
    
    var isNetworkAvailable = true
    var currentProduct: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureLayout()
        self.configureData()
    }
    
    func configureLayout() {
        self.vContainer.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        if let product = currentProduct {
            if let coverImage = UIImage(named: product.image) {
                self.iVCover.image = coverImage
            }
            if product.isVerified {
                self.iVVerified.isHidden = false
            } else {
                self.iVVerified.isHidden = true
            }
            self.lblName.text = product.name
            self.lblGrade.text = product.grade.rawValue
            self.lblRating.text = "\(product.rating)"
            self.lblUnit.text = product.unit
            self.lblQuantity.text = "\(product.quantity)"
            self.lblDescription.text = product.description
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onBtnAddToCartPressed(_ sender: Any) {
        
    }
    
}
extension ProductDetailVC: NetworkStatusListener {
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
