//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // MARK: - Locate JSON File
        guard let url = self.url(forResource: file, withExtension: "json") else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        // MARK: - Create property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        // MARK: - Create decoder
        let decoder = JSONDecoder()
        // MARK: - Create property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) form bundle.")
        }
        // MARK: - Return data
        return decodedData
    }
}
