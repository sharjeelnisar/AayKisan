//
//  Extensions.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//

import Foundation
import UIKit

extension UIView {
    func applyCustomShadowEffectToView() {
        self.clipsToBounds = false
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 6.0
        self.layer.shadowOffset = CGSize(width: 0, height: 6)
        self.layer.shadowColor = UIColor(named: "color_shadow")?.cgColor
    }
    
    func applyBorderToView() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "color_shadow")?.cgColor
    }
}
extension UITextField {
    func applyCustomShadowEffect() {
        self.clipsToBounds = false
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 6.0
        self.layer.shadowOffset = CGSize(width: 0, height: 6)
        self.layer.shadowColor = UIColor(named: "color_shadow")?.cgColor
    }
}
