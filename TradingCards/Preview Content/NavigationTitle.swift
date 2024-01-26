//
//  navigation.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/23.
//

import SwiftUI

struct Navigation: View {
    
    let CoverPhoto: String
    let playerName: String
    let Discription: String
    
    var body: some View {
        HStack{
            
            Image(CoverPhoto)
                .resizable()
                .frame(width: 55,height: 60)
                .offset(y:2)
                .clipShape(.circle)
            
            VStack(alignment:.leading){
                
                Text(playerName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(Discription)
                    
            }
            
        }
    }
}

#Preview {
    Navigation(CoverPhoto: "Charizard", playerName: "Charizard", Discription: "It's the coolest among all Pokemons")
}
