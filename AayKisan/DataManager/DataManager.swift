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
    Product(id: UUID(), name: "Cherry Tomato", unit: "Kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Premium quality cherry tomatoes, grown at my home. Purely organic and fresh.", address: "876-XX Block, DHA, Lahore", image: "cherry_tomato"),
    Product(id: UUID(), name: "Mint", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Finest home grown fresh green mint leaves", address: "256-A Block, Model Town, Lahore", image: "mint"),
    Product(id: UUID(), name: "Mushroom", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "The Farm Fresh Mushrooms will provide you an amazing flavor of white mushrooms that you never taste before. ", address: "876-B Block, Dream Gardens, Lahore", image: "mushroom"),
    Product(id: UUID(), name: "Onion", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Buy organic red onion. Rich in biotin and vitamins", address: "34/7 Shah Kot, G.T Road, Sheikhupura", image: "onion"),
    Product(id: UUID(), name: "Brocolli", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Fresh brocolli sourced from the best of the farms available at your doorstep", address: "34/7 Shah Kot, G.T Road, Sheikhupura", image: "brocolli"),
    Product(id: UUID(), name: "Beet root", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Organic Beet Root / Chuqandar", address: "Suite E-31 Glass Tower Clifton Road, near 3 talwar Clifton Karachi, Pakistan.", image: "beet_root")
    ]
    
    static let fruits = [
      Product(id: UUID(), name: "JackFruit", unit: "Kg", quantity: 1.0, isVerified: true, grade: .A, rating: 0.0, description: "Home grown, export quality. Fresh, healthy fruit.", address: "76-C, Model Town, Lahore", image: "jackfruit"),
      Product(id: UUID(), name: "Pineapple", unit: "piece", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Buy fresh Anannaas (Pineapple) from your home. These home grown pineapples are rich in nutrients and exquisite in taste.", address: "176-B Block, Dream Gardens, Lahore", image: "pineapple"),
      Product(id: UUID(), name: "Strawbberry", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Go ahead, get this bag and enjoy the natural goodness of strawberries just the way you like them. ", address: "Deenwha, Link Road, Vehari, Punjab", image: "strawberry"),
      Product(id: UUID(), name: "Kiwi", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "The best assortment of Kiwi in Lahore, Islamabad, Faisalabad. Purely organic and fresh. ", address: "34/7 Shah Kot, G.T Road, Sheikhupura", image: "kiwi"),
      Product(id: UUID(), name: "Papaya", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Premium Papaya (Papita) fresh and well packed", address: "26th Street, Phase V Badar Commercial Area Defence V Defence Housing Authority, Karachi, Karachi City, Sindh 75500", image: "papaya"),
      Product(id: UUID(), name: "Orange", unit: "dozen", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Our Oranges are procured from our very own farm – making them not only exclusive but also of the utmost quality.", address: "Block E1 Liberty Market Gulberg III, Lahore, Punjab", image: "orange")
      ]
    
    static let dairyProducts = [
      Product(id: UUID(), name: "Pure Home made Butter", unit: "Kg", quantity: 1.0, isVerified: false, grade: .B, rating: 3.0, description: "We prepare pure food for you. Khalis Desi Ghee.", address: "34/7 Shah Kot, G.T Road, Sheikhupura", image: "butter"),
      Product(id: UUID(), name: "Farm fresh cow milk", unit: "litre", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "We provide Farm Fresh cow milk, Pure farm cow milk with home delivery option.", address: "Plot SF 10, Block-B Block B North Nazimabad Town, Karachi, Karachi City, Sindh 74600", image: "cow_milk"),
      Product(id: UUID(), name: "Fresh cow curd", unit: "gm", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Buy our hygienically procured fresh cow curd and we will deliver it to your doorstep", address: "Golra Rd, Islamabad, Islamabad Capital Territory", image: "cow_curd"),
      Product(id: UUID(), name: "Corn Cattle Silage/ Maize Silage", unit: "kg", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Premium quality maize silage with full grain. Available in 50kg bags.", address: "Bahawalpur, Punjab, Pakistan", image: "corn_silage"),
      Product(id: UUID(), name: "Fresh cow's cheese", unit: "", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Fresh Cow Cheese is a blend of Mozzarella & Cheddar and is made from pure cow’s milk. With excellent melting ability, the cheese is great for making pizzas, grilled sandwiches & bakes. ", address: "94-Y Block, Commercial Market, Sector Y DHA Phase 3, Lahore, Punjab", image: "cow_cheese"),
      Product(id: UUID(), name: "Premium eggs", unit: "dozen", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Eggs are healthy, tasty & hygienically produced. The egg shells are UV sanitized and the eggs are sorted & graded based on weight. ", address: "3 Johar Town, Block F Phase 1 Johar Town, Lahore, Punjab 54600", image: "eggs")
      ]
    
    static let seeds = [
      Product(id: UUID(), name: "Tomato Seeds - Desi", unit: "Seed", quantity: 100.0, isVerified: true, grade: .A, rating: 5.0, description: "A one quality pure seeds, prepared in our own farms.", address: "876-A, Khayaban Siddique, Khairpur", image: "tomato"),
      Product(id: UUID(), name: "MORNING GLORY CRIMSON RAMBLER", unit: "seed", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Quick growing, self supporting vine with round foliage and open trumpet-shaped flowers.", address: "Block A Sabzazar Housing Scheme Phase 1 & 2 Lahore, Punjab", image: "morning_glory"),
      Product(id: UUID(), name: "Eggplant seeds", unit: "Seed", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "First Picking: 65-70 Days After TPL, Fruit Color: Dark Purple with White Stripes, Fruit Weight: 80-100g", address: " Block A Police Foundation, Islamabad, Punjab", image: "egg_plant"),
      Product(id: UUID(), name: "Fennel leaf seeds", unit: "Seed", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Non Bulbing type. Leaves are a nice addition to salads, cole slaw,", address: "zubair kitchan Garden Deenwha, Link Road, Vehari, Punjab", image: "fennel_leaf"),
      Product(id: UUID(), name: "Oregano Seed", unit: "Seed", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "100 Seeds in a Packet New! Tidy, upright habit for easy harvest and clean foliage. Pungent earthy flavor that is slightly less spicy than Greek Oregano. Fuzzy green leaves with pungent earthy flavor and small white flowers. ", address: " Block 10-A Block 10 A National Cement Cooperative Housing Society, Karachi, Karachi City, Sindh 75330", image: "oregano"),
      Product(id: UUID(), name: "Garden Cosmos Mixed Annual.", unit: "Seeds", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Soft pink daisy like flowers with ferny foliage. Tall plant ideal for the back of your cottage or wildflower garden, requires little care, grows to 3–5’. Medium lasting cut flower, long branches with several flowers for large arrangements. Attractive to bees, butterflies.", address: " 349 Lower Mall, Rewaz Garden Rewaz Gardens, Lahore, Punjab 54000", image: "garden_cosmos_mixed")
      ]
    
    static let gardeningEquipment = [
      Product(id: UUID(), name: "Grow Bags", unit: "Count", quantity: 1.0, isVerified: true, grade: .A, rating: 5.0, description: "Grow bags, made by jeans, to grow vegetables in your balcony or roof top.", address: "68-C, Shaheed-e-Millat Road, Karachi", image: "grow_bags"),
      Product(id: UUID(), name: "Plastic Pot With Hanger", unit: "count", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: " Small Size Plastic Pot With Hanger - 7 Inch Diameter X 6 POT", address: "SHOP NUMBER 89 VEGETABLE MARKET MULTAN CHUNGI MULTAN، Wahdat Rd, near MAHRAN BLOCK، Allama Iqbal Town, Lahore, 45000", image: "plastic_pots_with_hanger"),
      Product(id: UUID(), name: "Direct Injection Home Garden Water Gun", unit: "Count", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Direct Injection Home Garden Water Gun High Pressure Car washing Water Gun. Material:Plastic, Feature:Soft Grip, Garden Water Gun Type:Nozzles, Plastic Type:ABS", address: "Pak tools, Allahabad, Rawalpindi, Punjab 46000", image: "water_gun"),
      Product(id: UUID(), name: "gardening gloves", unit: "pair", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "Lrge sized plastic fiber gardening gloves", address: "Awan garden centre, Block A Police Foundation, Islamabad, Punjab", image: "gardening_gloves"),
      Product(id: UUID(), name: "Gardening tool set", unit: "set", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "1 trowel, 1 cultivator, 1 transplanter, 1 weeder, 1 fork with Orange color handle.", address: "99/B/III Hussain Chowk، MM Alam Rd, Block B 3 Gulberg III, Lahore, Punjab 54000", image: "gardening_tool_set"),
      Product(id: UUID(), name: "American Lawn Mower", unit: "count", quantity: 1.0, isVerified: true, grade: .A, rating: 4.0, description: "4-blade reel with a cutting width of 14” and durable 8.5” polymer wheels for maximum maneuverability. Mechanical lawn mower with an adjustable blade height of 0.5”-1.75” with scissor action cut.", address: "136, Neelum Block Neelam Block Allama Iqbal Town, Lahore, Punjab 54000", image: "american_lawn_mover")
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
