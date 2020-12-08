//
//  CategoryTableViewCell.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 07/12/2020.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    @IBOutlet weak var vContainer: UIView!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var iVDetail: UIImageView!
    
    var category: ProductCategory?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureLayout() {
        self.selectionStyle = .none
        self.vContainer.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        if let pCategory = self.category {
            self.lblCategory.text = pCategory.name
        }
    }

}
