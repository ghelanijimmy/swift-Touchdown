//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-10-01.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
            shop.selectedProduct?.colorValue ??
            sampleProduct.colorValue
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .padding()
        .environmentObject(Shop())
}
