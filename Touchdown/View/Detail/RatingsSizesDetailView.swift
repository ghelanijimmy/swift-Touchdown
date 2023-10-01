//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-10-01.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 2, content: {
                    ForEach(1...5, id: \.self) {item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .foregroundStyle(.white)
                        }) //: BUTTON
                    } //: LOOP
                }) //: HSTACK
            }) //: VSTACK
            
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) {size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28)
                                .background(
                                    Color.white.clipShape(RoundedRectangle(cornerRadius: 5))
                                )
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }) //: BUTTON
                    } //: LOOP
                }) //: HSTACK
            }) //: VSTACK
        }) //: HSTACK
    }
}

#Preview {
    RatingsSizesDetailView()
        .padding()
}
