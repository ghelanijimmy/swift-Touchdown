//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })
        } //: HSTACK
    }
}

#Preview {
    NavigationBarDetailView()
        .padding()
        .background(.gray)
        .environmentObject(Shop())
}
