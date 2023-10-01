//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-10-01.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - PROPERTIES
    @State private var counter: Int = 0
    @State private var isLiked: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 26)
            
            Button(action: {
                feedback.impactOccurred()
                counter += 1
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                isLiked.toggle()
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(isLiked ? .pink : .gray)
            })
        }) //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
        .padding()
}
