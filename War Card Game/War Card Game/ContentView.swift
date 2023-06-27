//
//  ContentView.swift
//  War Card Game
//
//  Created by Ali Navab on 2023-06-21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card12"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    }
                    Spacer()
                    
                Button {
                    Deal()
                } label: {
                    Image("button")
                }

                
                    Spacer()
                    HStack{
                        Spacer()
                        VStack{

                            Text("Player 1")
                                .padding(.bottom, 10.0)
                            Text(String(playerScore))
                            }
                            Spacer()
                            VStack{
 
                                Text("Player 2")
                                .padding(.bottom, 10.0)
                                Text(String(cpuScore))
                            }

                            Spacer()
                }
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func Deal(){
        //Randomize player cards
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize cpu cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update scores
        if playerCardValue > cpuCardValue {
            playerScore = playerScore + 1
        }
        else if playerCardValue < cpuCardValue {
            cpuScore = cpuScore + 1
        }
        
        print("Deal Cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
