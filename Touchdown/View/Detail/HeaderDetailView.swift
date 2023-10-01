//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView()
        .padding()
        .background(.gray)
        .environmentObject(Shop())
}
