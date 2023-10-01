//
//  SwiftUIView.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import SwiftUI

struct CardOfWords: View {
    @Binding var items: GameModel
    var body: some View {
        
        ZStack {
            Color.white.cornerRadius(12)

            ItemSelector(item: $items)
            
        }
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .frame(width: Constants.DisplaySize.screenWidth * 0.9, height: Constants.DisplaySize.screenHeight * 0.07)
        .listRowBackground(Color("BGColor"))
        
    }
}

