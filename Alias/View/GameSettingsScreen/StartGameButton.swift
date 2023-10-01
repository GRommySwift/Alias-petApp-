//
//  StartGameButton.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import SwiftUI

struct StartGameButton: View {
    var body: some View {
        NavigationLink(destination: GameScreen()) {
            Text("Start")
                .font(.title.weight(.semibold))
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(.rect(cornerRadius: 40))
                .shadow(radius: 4, x: 0, y: 4)
            
        }
    }
}
