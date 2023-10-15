//
//  SwiftUIView.swift
//  Alias
//
//  Created by Roman on 15/10/2023.
//

import SwiftUI

struct GSNextScreenButton: View {
    let labelText: String
    var body: some View {
        NavigationLink(destination: BetweenGameScreen().navigationBarBackButtonHidden(true)) {
            Text(labelText)
                .font(.title.weight(.semibold))
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: 4, x: 0, y: 4)
        }
    }
}
