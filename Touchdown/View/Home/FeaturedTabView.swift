//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) {player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TABVIEW
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        .padding()
        .background(.gray)
}
