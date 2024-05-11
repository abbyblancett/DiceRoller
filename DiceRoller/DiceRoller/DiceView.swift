//
//  DiceView.swift
//  DiceRoller
//
//  Created by Abby Blancett on 5/8/24.
//
import SwiftUI


struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .aspectRatio(1, contentMode: .fit)
            
            Button("Roll"){
                withAnimation{
                    numberOfPips = Int.random(in: 1...6)
                }
                
            }
            .buttonStyle(.bordered)
        }
    }
}


#Preview {
    DiceView()
}
