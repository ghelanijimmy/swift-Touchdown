//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    // MARK: - FUNCTIONS
    func getSafeAreaInset() -> UIEdgeInsets {
        let scene = UIApplication.shared.connectedScenes
        let window = scene.first as? UIWindowScene
        return (window?.windows.first!.safeAreaInsets)!
    }
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                // NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top, getSafeAreaInset().top)
                // HEADER
                HeaderDetailView()
                    .padding(.horizontal)
                
                // DETAIL TOP PART
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                
                // DETAIL BOTTOM PART
                VStack(alignment: .center, spacing: 0, content: {
                    // RATINGS + SIZES
                    RatingsSizesDetailView()
                        .padding(.top, -25)
                        .padding(.bottom, 10)
                    
                    // DESCRIPTION
                    ScrollView(.vertical, showsIndicators: false) {
                        Text(sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                    } //: SCROLL
                    
                    // QUANTITY + FAVOURITE
                    QuantityFavouriteDetailView()
                        .padding(.vertical, 10)
                    
                    // ADD TO CART
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                }) //: VSTACK
                .padding(.horizontal, 20)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
            } //: VSTACK
            .zIndex(0)
            .background(
                sampleProduct.colorValue
                    .ignoresSafeArea(.all, edges: .all)
            )
        } //: ZSTACK
        .ignoresSafeArea()
    }
}

#Preview {
    ProductDetailView()
}
