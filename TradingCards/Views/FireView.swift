//
//  FireView.swift
//  TradingCards
//
//  Created by Dexter Ng on 2024-01-19.
//

import SwiftUI

struct FireView: View {
    var body: some View {
        
        ZStack {
            
            GeometryReader { geo in
                Circle()
                    .fill (
                        RadialGradient(
                            gradient: Gradient(colors: [Color.white, Color.red]),
                            center: .center,
                            startRadius: 0,
                            endRadius: geo.size.width
                        )
                    )
                    .overlay {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                    }
                    .offset(y: geo.frame(in: .local).midX)

            }

        }
        
    }
}

#Preview {
    FireView()
}
