//
//  PlayerListView.swift
//  TradingCards
//
//  Created by Dexter Ng on 2024-01-25.
//

import SwiftUI

struct PlayerListView: View {
    var body: some View {

        NavigationStack {
            List {
                
                // First Item
                NavigationLink {
                    StaticView(character: charizard)
                } label: {
                    Text(charizard.pokemonName)
                }
                
                NavigationLink {
                    StaticView(character: magmar)
                } label: {
                    Text(magmar.pokemonName)
                }

            }
        }

    }
}

#Preview {
    PlayerListView()
}
