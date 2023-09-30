//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
