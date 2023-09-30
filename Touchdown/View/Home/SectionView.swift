//
//  SectionView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        } //: VSTACK
        .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 12)))
        .frame(width: 85)
    }
}

#Preview("Initial") {
    SectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}

#Preview("Rotate Clockwise") {
    SectionView(rotateClockwise: true)
        .padding()
        .background(colorBackground)
}
