//  ContentView.swift
//  War Card Game
//
//
//

import SwiftUI

struct ContentView: View {
   
   @State var player = "card7"
   @State var CPU = "card13"
   @State var playerScore:Int = 0
   @State var CPUScore:Int = 0
    
    var body: some View {
       
       ZStack {
           
           Image("background-wood-cartoon")
               .resizable()
               .ignoresSafeArea()
           
           VStack {
               Spacer()
               Image("logo")
               Spacer()
               HStack {
                   Spacer()
                   Image(player)
                   Spacer()
                   Image(CPU)
                   Spacer()
               }
               Spacer()
               
        
               
               Button {
                   deal()
               } label: {
                   Image("button")
               }

               
               
               Spacer()
               HStack {
                   Spacer()
                   VStack {
                       Text("Player")
                           .font(.headline)
                           .padding(.bottom, 10.0)
                           
                       Text(String(playerScore))
                           .font(.largeTitle)
                           
                   }
                   Spacer()
                   VStack {
                       Text("CPU")
                           .font(.headline)
                           .padding(.bottom, 10.0)
                       Text(String(CPUScore))
                           .font(.largeTitle)
                   }
                   Spacer()
               }
               .foregroundColor(.white)
               Spacer()
               
           }
       }
       
   }
    
    
    func deal(){
        
        //Randomize the player cards
        var playerCardValue:Int = Int.random(in: 2...14)
        player = "card" + String(playerCardValue)
        
        //Randomize the CPU cards
        var CPUCardValue:Int = Int.random(in: 2...14)
        CPU = "card" + String(CPUCardValue)
        
        //update the scores
        if playerCardValue > CPUCardValue{
            playerScore = playerScore + 1
        }
        else if CPUCardValue > playerCardValue{
            CPUScore = CPUScore + 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
       ContentView()
   }
}
