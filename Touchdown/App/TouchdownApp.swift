//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
