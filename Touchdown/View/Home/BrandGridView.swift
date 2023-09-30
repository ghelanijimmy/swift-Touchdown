//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) {brand in
                    BrandItemView(brand: brand)
                } //: LOOP
            }) //: GRID
            .frame(height: 200)
            .padding(15)
        } //: SCROLL
    }
}

#Preview {
    BrandGridView()
        .background(colorBackground)
}
