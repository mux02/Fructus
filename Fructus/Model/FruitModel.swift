//
//  FruitModel.swift
//  Fructus
//
//  Created by Mohammed Almalki on 16/11/1442 AH.
//

import SwiftUI

// Mark: Fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title : String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description : String
    var nutrition : [String]
}

