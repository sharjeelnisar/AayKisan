//
//  Enums.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 07/12/2020.
//

import Foundation

enum Segues: String {
    case WelcomeToGrow = "segue_welocme_grow"
    case HelpToMenuSegue = "segue_help_menu"
    case CategoryToProducts = "segue_category_product"
    case ProductToProductDetail = "segue_product_detail"
    case BuyToDemand = "segue_buy_demand"
    case SellToDemands = "segue_sell_demands"
    case SellToProducts = "segue_sell_products"
    case SellToOrders = "segue_sell_orders"
}

enum HelpLineNumbers: String {
    case AgricultureDepartment = "tel://+923002955539"
}

enum HelpLanguage: String {
    case Urdu
    case Pothohari
    case Punjabi
    case Sindhi
    case Balochi
    case Pashto
    case Kashmiri
    case Balti
    case Sariki
    case Hindko
    case Brahvi
}

enum ProductGrade: String {
    case A
    case B
    case C
}

enum PlaceHolders: String {
    case emptyString = ""
    case space = " "
    case unavailable = "N/A"
}
