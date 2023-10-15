//
//  AfterGameGuessedWords.swift
//  Alias
//
//  Created by Roman on 15/10/2023.
//

import SwiftUI

struct AfterGameGuessedWords: View {
    @Binding var item: GameResultsModel
    var body: some View {
        
        ZStack {
            Color.white.cornerRadius(12)
            HStack {
                Spacer()
                ZStack(alignment: .leading) {
                    HStack {
                        Text(item.selectedWord)
                    }
                }
                Spacer()
                ZStack {
                    Color( item.isGuessedRight ? .green: .red)
                        .cornerRadius(12)
                        .onTapGesture {
                            item.isGuessedRight.toggle()
                        }
                    Image(systemName: item.isGuessedRight ? "checkmark": "multiply")
                        .font(.title)
                        .foregroundStyle(.white)
                }.frame(width: 70)
                    
            }
            
        }
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .frame(width: Constants.DisplaySize.screenWidth * 0.9, height: Constants.DisplaySize.screenHeight * 0.07)
        .listRowBackground(Color("BGColor"))
        
        
    }
}

