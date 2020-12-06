//
//  Post.swift
//  AayKisan
//
//  Created by Sharjeel Nisar on 05/12/2020.
//

import Foundation
import UIKit

struct Post: Identifiable {
    var id = UUID()
    var title: String
    var image: String?
    var comments: [String]?
}
