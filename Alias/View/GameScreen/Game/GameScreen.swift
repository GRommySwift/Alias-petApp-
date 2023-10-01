//
//  GameScreen.swift
//  Alias
//
//  Created by Roman on 01/10/2023.
//

import SwiftUI

struct GameScreen: View {
    @EnvironmentObject var gameModel: CategoriesOfWordsVM
    
    @State var timeRemaining: Int = 10
    
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                VStack(spacing: -50) {
                    Text("Good answers : 6").font(.custom(.buttonFont, size: 20)).opacity(0.8).foregroundStyle(.white)
                    Text("\(timeRemaining)").font(.custom(.buttonFont, size: 250)).opacity(0.1).foregroundStyle(.white)
                    Spacer()
                }
                    .onReceive(timer, perform: { _ in
                        if timeRemaining > 0 {
                            timeRemaining -= 1
                        } else {
                            timeRemaining = 0
                        }
                        
                    })
            }
        }
    }
}

#Preview {
    GameScreen()
}
