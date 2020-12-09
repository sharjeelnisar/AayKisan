//
//  MockDataManager.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//
import Foundation

class DataManager {
   static let mockPosts = [
    Post(title: "Morning glory", image: "morning_glory", comments: ["Wow", "Beautiful"]),
    Post(title: "My Cherry Tomatoes", image: "cherry_tomato"),
    Post(title: "Aloe Vera in my garden", image: "aloe_vera"),
    Post(title: "Beautiful Roses", image: "rose"),
    Post(title: "My Spinach plan", image: "spinach"),
    Post(title: "Happy Gardening! my small kitchen garden", image: "kithen_garden"),
    Post(title: "Grow Garlic at home easily", image: "garlic"),
    Post(title: "Look at my Jack Fruit plant :)", image: "jack_fruit"),
    Post(title: "Petunia in my beautiful lawn", image: "petunia")
        ]
    
  static let mockCategories = [
    ProductCategory(id: UUID(), name: "Vegetables"),
    ProductCategory(id: UUID(), name: "Fruits"),
    ProductCategory(id: UUID(), name: "Dairy Products"),
    ProductCategory(id: UUID(), name: "Seeds"),
    ProductCategory(id: UUID(), name: "Gardening Equipment")
  ]
    
  static let vegetables = [
    Product(id: UUID(), name: "Cherry Tomato", unit: "Kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Premium quality cherry tomatoes, grown at my home. Purely organic and fresh.", address: "876-XX Block, DHA, Lahore", image: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: "")
    ]
    
    static let fruits = [
        Product(id: UUID(), name: "JackFruit", unit: "Kg", quantity: 1.0, isVerified: true, grade: .A, rating: 0.0, description: "Home grown, export quality. Fresh, healthy fruit.", address: "76-C, Model Town, Lahore", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: "")
      ]
    
    static let dairyProducts = [
        Product(id: UUID(), name: "Pure Home made Butter", unit: "Kg", quantity: 1.0, isVerified: false, grade: .B, rating: 3.0, description: "We prepare pure food for you. Khalis Desi Ghee.", address: "34/7 Shah Kot, G.T Road, Sheikhupura", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: "")
      ]
    
    static let seeds = [
        Product(id: UUID(), name: "Tomato Seeds - Desi", unit: "Seed", quantity: 100.0, isVerified: true, grade: .A, rating: 5.0, description: "A one quality pure seeds, prepared in our own farms.", address: "876-A, Khayaban Siddique, Khairpur", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: "")
      ]
    
    static let gardeningEquipment = [
        Product(id: UUID(), name: "Grow Bags", unit: "Count", quantity: 1.0, isVerified: true, grade: .A, rating: 5.0, description: "Grow bags, made by jeans, to grow vegetables in your balcony or roof top.", address: "68-C, Shaheed-e-Millat Road, Karachi", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: ""),
        Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "", address: "", image: "")
      ]
    
    static let orders = [
      Order(id: UUID(), productName: "Cherry Tomato", quantity: 5, unit: "Kg", address: "Spice Bazaar, Mehmood Ali Qasuri Road, Lahore"),
        Order(id: UUID(), productName: "Carrot", quantity: 5, unit: "Kg", address: "Gourmet Bakers, Block C, Model Town, Lahore"),
        Order(id: UUID(), productName: "Tulip Rose", quantity: 24, unit: "Count", address: "Rose Me, Mall Road, Murree")
    ]
    
    static let demands = [
      Demand(id: UUID(), productName: "Red Blood Orange", quantity: 100, unit: "Kg", address: "Fruit n Juices, Aabpara, Islamabad", date: "30 December, 2020"),
        Demand(id: UUID(), productName: "Ice Burg", quantity: 20, unit: "Kg", address: "Let's Meat, Aabpara, Islamabad", date: "01 January, 2021"),
        Demand(id: UUID(), productName: "Cherry Tomato", quantity: 100, unit: "Kg", address: "SaveYou, MM Alam Road, Lahore", date: "01 January, 2021")
    ]
    
    static func getProductsOf(category: String) -> [Product] {
        switch category {
        case "Vegetables":
            return DataManager.vegetables
        case "Fruits":
            return DataManager.fruits
        case "Dairy Products":
            return DataManager.dairyProducts
        case "Seeds":
            return DataManager.seeds
        case "Gardening Equipment":
            return DataManager.gardeningEquipment
        default:
            return [Product]()
        }
    }
}
