//
//  BetweenGameScreen.swift
//  Alias
//
//  Created by Roman on 15/10/2023.
//

import SwiftUI

struct BetweenGameScreen: View {
    @EnvironmentObject var gameModel: GameScreenViewModel
    
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
