//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-10-01.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
            sampleProduct.colorValue
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .padding()
}
