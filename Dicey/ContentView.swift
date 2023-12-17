//
//  ContentView.swift
//  Dicey
//
//  Created by Palatip Jantawong on 12/12/2566 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    var body: some View {
        VStack {
            Text("Dicey")
                .foregroundStyle(Color.cyan)
                .bold()
                .font(.system(size: 50))
                .fontWeight(.black)
            
            Spacer()
            
            Button(action: {
                leftDiceNumber = Int.random(in: 1...6)
                rightDiceNumber = Int.random(in: 1...6)
            }, label: {
                Text("Click me to roll the Dice!")
            })
            
            Spacer()
            
            HStack{
                Image("dice\(leftDiceNumber)")
                    .resizable()
                    .frame(width: 200, height: 200)
                Image("dice\(rightDiceNumber)")
                    .resizable()
                    .frame(width: 200, height: 200)
            }.offset(y: -200)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
