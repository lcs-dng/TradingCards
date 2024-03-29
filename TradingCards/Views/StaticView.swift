//
//  StaticView.swift
//  TradingCards
//
//  Created by Dexter Ng on 2024-01-24.
//

import SwiftUI

struct StaticView: View {
    
    let character: TradingCard
    
    var body: some View {
        
        ZStack {
            
            Color.yellow
            
            Color.lightPink
                .ignoresSafeArea()
                .padding()
            
            // Upper Part
            VStack {
                
                // Upper Heading
                HStack {
                    
                    // Charizard Title
                    VStack {
                        
                        Text(character.evolvesFrom)
                            .font(
                                .system(size: 8)
                                .bold()
                                .italic()
                            )
                        
                        Color.yellow
                            .frame(height: 2)
                        
                        HStack {
                            
                            Spacer()
                            
                            Text(character.pokemonName)
                                .font(
                                    .system(size: 25)
                                    .bold()
                            )
                                .padding(.top, -10)
                            
                        }
                        
                    }
                    .offset(y: 5)
                    
                    // HP Title
                    VStack {
                        
                        VStack {
                            Text(character.stage1Card)
                                .font(
                                    .system(size: 8)
                                    .italic()
                                )
                            
                            Color.yellow
                                .frame(height: 2)
                        }
                        .offset(y: 342)
                        
                        HStack {
                            
                            Text(character.HP)
                                .foregroundColor(.red)
                                .font(
                                    .system(size: 25)
                                    .bold()
                                )
                                .padding(0)
                                .offset(y: 4)
                            
                             FireView()
                                .frame(width: 30)
                                .padding(0)
                                .offset(y: 323)
                            
                        }
                        .padding(.top, -10)
                        
                    }
                    .offset(y: 1)
                    
                }
                .padding(.bottom, -10)
                .padding(.leading, 30)
                .padding(.trailing, 30)
             
                ZStack {
                    
                    Rectangle()
                        .fill(.yellow)
                        .frame(height: 225)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                    
                    Image(character.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    
                }
                .padding(.top, -335)
                
                // Text with yellow background
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(height: 22)
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                        .padding(.top, -110)
                        .overlay(Text(character.pokemonDescription)
                            .offset(y: -98))
                        .font(
                            .system(size: 11)
                            .italic()
                            .bold()
                        )
                    
                }
                
                
                
            }
            .padding()
            .offset(y: -335)
            
            Text(character.pokemonPower)
                .font(.system(size: 15).bold())
                .foregroundColor(.blue)
                .offset(x: -37, y: -10)
            
            // Charizard Description
            Text(character.powerDescription)
        .font(.system(size: 10).bold())
        .offset(x: 13, y: 28)
        .multilineTextAlignment(.leading)
            
            FireView()
                .frame(width: 18)
                .offset(x: -33, y: 376)
            
            // Divider
            VStack {
                
                Color.black
                    .frame(height: 2)
                    .offset(y: 110)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                
                Color.black
                    .frame(height: 2)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .offset(y: 205)

            }
            
            // Four Fireballs
            VStack {
                
                HStack {
                    FireView()
                        .frame(width: 30)
                    FireView()
                        .frame(width: 30)
                }
                .offset(y:348)

                HStack {
                    FireView()
                        .frame(width: 30)
                    FireView()
                        .frame(width: 30)
                }
                
            }
            .offset(x: -133, y: 140)
            
            Text(character.specialAttack)
                .offset(x: -50, y: 140)
                .font(.system(size: 20).bold())
            
            // Fire Spin Description
            Text(character.attackDescription)
            .font(.system(size: 13))
            .offset(x: 6, y: 157)
         
            Text(character.attackNumber)
                .font(.system(size: 35).bold())
                .offset(x: 142, y: 155)
            
            // Waterball
            VStack {
                
                Text("weakness")
                    .font(
                        .system(size: 12)
                        .bold()
                    )
                    .padding(.bottom, -10)
                
                Image(character.weaknessSymbol)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 27)
                
            }
            .offset(x: -130, y: 240)
            
            // Fistball
            VStack {
                
                Text("resistance")
                    .font(
                        .system(size: 12)
                        .bold()
                    )
                    .padding(.bottom, -7)
                
                HStack {
                    Image(character.resistanceSymbol)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 27)
                        .offset(x: 10)
                    
                    ZStack(alignment: .trailing, content: {
                        Text("-30")
                    })  .font(
                            .system(size: 15)
                            .bold()
                        )
                }
                
            }
            .offset(y: 240)
            
            // 3Stars
            VStack {
                
                Text("retreat cost")
                    .font(
                        .system(size: 12)
                        .bold()
                    )
                    .padding(.bottom, -9)
                    .offset(x: 10)
                
                Image(character.retreatCostSymbol)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 27)
                        .offset(x: 10)
                                        
            }
            .offset(x: 110, y: 240)
            
            // Bottom Text
            Text(character.funFact)
            .font(
                .system(size: 12)
                .bold()
            )
            .padding(5)
            .border(.yellow)
            .offset(y: 300)
            
        }
        
    }
}

#Preview {
    StaticView(character: magmar)
}
#Preview {
    StaticView(character: charizard)
}
