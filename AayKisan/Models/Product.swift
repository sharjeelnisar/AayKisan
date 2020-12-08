//
//  Product.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 07/12/2020.
//

import Foundation
import UIKit

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var unit: String
    var quantity: Float
    var isVerified: Bool
    var grade: ProductGrade
    var rating: Float
    var description: String
    var address: String
}
