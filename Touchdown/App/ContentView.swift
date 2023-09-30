//
//  ContentView.swift
//  Touchdown
//
//  Created by Jimmy Ghelani on 2023-09-30.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    func returnTopInset() -> CGFloat {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let inset = window?.safeAreaInsets.top
        if let inset = inset {
            return inset
        }
        return 0.0
    }
    // MARK: - BODY
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, returnTopInset())
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(width: geometry.size.width, height: 300)
                            
                            CategoryGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    } //: SCROLL
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK:  PREVIEW
#Preview {
    ContentView()
}
