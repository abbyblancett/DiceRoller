//
//  ContentView.swift
//  DiceRoller
//
//  Created by Abby Blancett on 5/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            HStack {
                ForEach(1...numberOfDice, id: \.description){_ in
                    DiceView()
                }
                
            }
        }
        .padding()
        .background(.cyan)
        .tint(.white)
        .foregroundStyle(.white)
        
        HStack{
            Button("Remove Dice", systemImage: "minus.circle"){
                numberOfDice -= 1
            }
            .disabled(numberOfDice == 1)
            
            Button("Add Dice", systemImage: "plus.circle"){
                numberOfDice += 1
            }
            .disabled(numberOfDice == 6)
        }
        .padding()
        .labelStyle(.iconOnly)
        
    }
}

#Preview {
    ContentView()
}
