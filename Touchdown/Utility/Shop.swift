//
//  Shop.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-10-01.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
