//
//  BetweenGameScreen.swift
//  Alias
//
//  Created by Roman on 15/10/2023.
//

import SwiftUI

struct BetweenGameScreen: View {
    @EnvironmentObject var gameModel: GameScreenViewModel
    @State var isPresenting = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                VStack {
                    List {
                        ForEach($gameModel.gameResult) { $element in
                            AfterGameGuessedWords(item: $element)
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
                
                Button {
                    isPresenting = true
                } label: {
                    Text("Next")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .shadow(radius: 4, x: 0, y: 4)
                }
                .position(x: Constants.DisplaySize.screenWidth * 0.5, y: Constants.DisplaySize.screenHeight * 0.83  )
                .navigationDestination(isPresented: $isPresenting) {
                    AfterGameScreen()
                }
            }
        }
    }
}

struct BetweenGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BetweenGameScreen()
        }.environmentObject(GameScreenViewModel())
    }
}
