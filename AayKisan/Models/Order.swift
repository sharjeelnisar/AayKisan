//
//  Order.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 08/12/2020.
//

import Foundation

struct Order {
    var id = UUID()
    var productName: String
    var quantity: Float
    var unit: String
    var address: String
}
