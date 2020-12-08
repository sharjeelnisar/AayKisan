//
//  OrderTableViewCell.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 08/12/2020.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblQuantity: UILabel!
    @IBOutlet weak var lblUnit: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    var currentOrder: Order?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureLayout() {
        self.selectionStyle = .none
        self.vContainer.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        if let order = currentOrder {
            self.lblProductName.text = order.productName
            self.lblQuantity.text = "\(order.quantity)"
            self.lblUnit.text = order.unit
            self.lblAddress.text = order.address
        }
    }
}
