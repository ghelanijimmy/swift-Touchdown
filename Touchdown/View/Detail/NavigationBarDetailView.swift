//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
}
