//
//  MockDataManager.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//
import Foundation

class DataManager {
   static let mockPosts = [
    Post(title: "Morning glory", image: "morning_glory"),
    Post(title: "Please guide me from where I can get good seeds?", image: nil),
    Post(title: "My Cherry Tomatoes", image: "cherry_tomato"),
    Post(title: "Aloe Vera in my garden", image: "aloe_vera"),
    Post(title: "Beautiful Roses", image: "rose"),
    Post(title: "My Spinach plan", image: "spinach"),
    Post(title: "Happy Gardening! my small kitchen garden", image: "kithen_garden"),
    Post(title: "Grow Garlic at home easily", image: "garlic"),
    Post(title: "Look at my Jack Fruit plant :)", image: "jack_fruit"),
    Post(title: "Petunia in my beautiful lawn", image: "petunia")
        ]
    
  static let mockProducts = [
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: ""),
    Product(id: UUID(), name: "", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "")
    ]
}
