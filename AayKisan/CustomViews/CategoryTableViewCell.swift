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

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func configureLayout() {
        self.vContainer.applyCustomShadowEffectToView()
    }
    
    func configureData() {
        if let pCategory = self.category {
            self.lblCategory.text = pCategory.name
        }
    }

}
