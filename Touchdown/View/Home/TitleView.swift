//
//  TitleView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .background(colorBackground)
}
