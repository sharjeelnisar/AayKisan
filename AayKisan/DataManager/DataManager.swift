//
//  MockDataManager.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//
import Foundation

class DataManager {
   static let mockPosts = [
            Post(id: UUID(), title: "Morning glory", image: "morning_glory"),
            Post(id: UUID(), title: "My Cherry Tomatoes", image: "cherry_tomato"),
            Post(id: UUID(), title: "Aloe Vera in my garden", image: "aloe_vera"),
            Post(id: UUID(), title: "Beautiful Roses", image: "rose"),
            Post(id: UUID(), title: "From where I can get good seeds", image: nil),
            Post(id: UUID(), title: "My Spinach", image: "spinach"),
            Post(id: UUID(), title: "Happy Gardening", image: "gardening")
        ]
    
}
