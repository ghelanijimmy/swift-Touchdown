//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category: Category
    // MARK: - BODY
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Spacer()
            } //: HSTACK
            .padding()
            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
            .background(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))
        }) //: BUTTON
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}
