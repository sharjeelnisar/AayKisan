//
//  DemandTableViewCell.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 08/12/2020.
//

import UIKit

class DemandTableViewCell: UITableViewCell {

    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblQuanity: UILabel!
    @IBOutlet weak var lblUnit: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var btnSubmitBid: UIButton!
    
    var currentDemand: Demand?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureLayout() {
        self.selectionStyle = .none
        self.vContainer.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        if let demand = currentDemand {
            self.lblProductName.text = demand.productName
            self.lblQuanity.text = "\(demand.quantity)"
            self.lblUnit.text = demand.unit
            self.lblAddress.text = demand.address
            self.lblDate.text = demand.date
        }
    }
    
    @IBAction func onBtnSubmitBidPressed(_ sender: Any) {
    }
}
