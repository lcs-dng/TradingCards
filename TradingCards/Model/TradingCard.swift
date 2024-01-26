//
//  TradingCard.swift
//  TradingCards
//
//  Created by Dexter Ng on 2024-01-26.
//

import Foundation

struct TradingCard {
    
    let pokemonName: String
    let HP: String
    let evolvesFrom: String
    let stage1Card: String
    let imageName: String
    let pokemonDescription: String
    let pokemonPower: String
    let powerDescription: String
    let specialAttack: String
    let attackDescription: String
    let attackNumber: String
    let weaknessSymbol: String
    let resistanceSymbol: String
    let retreatCostSymbol: String
    let funFact: String
    
}

let charizard = TradingCard(
    pokemonName: "Charizard",
    HP: "120 HP",
    evolvesFrom: "Evolves from Charmeleon",
    stage1Card: "Put Charizard on the Stage 1 card",
    imageName: "Charizard",
    pokemonDescription: "Flame Pokemon. Length: 5' 7', Weight: 199.5 Ibs.",
    pokemonPower: "Pokemon Power: Energy Burn",
    powerDescription: """
                                                                             All Energy attached

to this Pokemon are        Energy instead of their usual type.

This Pokemon Power stops working is this Pokemon is Asleep,

Confused, or Paralyzed.
""",
    specialAttack: "Fire Spin",
    attackDescription: """
                        Discard 2 Energy

from this Pokemon.
""",
    attackNumber: "100",
    weaknessSymbol: "waterBall",
    resistanceSymbol: "fistBall",
    retreatCostSymbol: "3starBalls",
    funFact: """
Spits fire that is hot enough to melt boulders. Known to
unintentionally cause forest fire. LV.76 #6
"""
)

let magmar = TradingCard(
    pokemonName: "Magmar",
    HP: "50 HP",
    evolvesFrom: "Basic Pokemon",
    stage1Card: " ",
    imageName: "Magmar",
    pokemonDescription: "NO. 126 Spitfire Pokemon HT: 4'03' WT: 98.1 lbs.",
    pokemonPower: "Fire Punch",
    powerDescription: " ",
    specialAttack: "               Flamethrower",
    attackDescription: """


    Discard a fire Energy attached
    to this Pokemon
""",
    attackNumber: "60",
    weaknessSymbol: "waterBall",
    resistanceSymbol: " ",
    retreatCostSymbol: "3starBalls",
    funFact: "Its body always burn with an orange glow that enables it to hide perfectly among flames. Lv.24 #126"
)
