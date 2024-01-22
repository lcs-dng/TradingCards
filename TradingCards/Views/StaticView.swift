//
//  StaticView.swift
//  TradingCards
//
//  Created by Dexter Ng on 2024-01-19.
//

import SwiftUI

struct StaticView: View {
    var body: some View {
        
        ZStack {
            
            Color.yellow
            
            Color.lightPink
                .ignoresSafeArea()
                .padding()
            
            VStack {
                
                HStack {
                    
                    VStack {
                        
                        Text("Evolves from Charmeleon")
                            .font(
                                .system(size: 8)
                                .bold()
                                .italic()
                            )
                        
                        Color.yellow
                            .frame(height: 2)
                        
                        HStack {
                            
                            Spacer()
                            
                            Text("Charizard")
                                .font(
                                    .system(size: 25)
                                    .bold()
                            )
                                .padding(.top, -10)
                            
                        }
                        
                    }
                    
                    VStack {
                        
                        VStack {
                            Text("Put Charizard on the Stage 1 card")
                                .font(
                                    .system(size: 8)
                                    .italic()
                                )
                            
                            Color.yellow
                                .frame(height: 2)
                        }
                        .offset(y: 342)
                        
                        HStack {
                            
                            Text("120 HP")
                                .foregroundColor(.red)
                                .font(
                                    .system(size: 25)
                                    .bold()
                                )
                                .padding(0)
                            
                             FireView()
                                .frame(width: 30)
                                .padding(0)
                                .offset(y: 323)
                            
                        }
                        .padding(.top, -10)
                        
                    }
                    
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
                    
                    Image("Charizard")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    
                }
                .padding(.top, -343)
                
            }
            .padding()
            .offset(y: -335)
            
        }
        
    }
}

#Preview {
    StaticView()
}
