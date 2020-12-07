//
//  ProductsTableViewCell.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 07/12/2020.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblGrade: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var iVVerified: UIImageView!
    
    var product: Product?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureLayout() {
        self.vContainer.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        if let currentProduct = self.product {
            if currentProduct.isVerified {
                self.iVVerified.isHidden = false
            } else {
                self.iVVerified.isHidden = true
            }
            self.lblName.text = currentProduct.name
            self.lblRating.text = "\(currentProduct.rating)"
            self.lblGrade.text = currentProduct.grade.rawValue
            self.lblDescription.text = currentProduct.description
        }
    }
}
