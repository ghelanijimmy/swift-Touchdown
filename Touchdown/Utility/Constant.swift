//
//  Constant.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import Foundation
import SwiftUI

//MARK: - DATA
let players: [Player] = Bundle.main.decode("player")
let categories: [Category] = Bundle.main.decode("category")
let products: [Product] = Bundle.main.decode("product")

//MARK: - COLOR
let colorBackground: Color = Color(.colorBackground)
let colorGray: Color = Color(UIColor.systemGray4)

//MARK: - LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//MARK: -  UX

//MARK: - API

//MARK: - IMAGE

//MARK: - FONT

//MARK: - STRING

//MARK: - MISC
