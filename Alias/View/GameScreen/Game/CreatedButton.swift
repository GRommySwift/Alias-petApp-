//
//  CreatedButton.swift
//  Alias
//
//  Created by Roman on 11/10/2023.
//

import SwiftUI

struct CreatedButton: View {
    @State var textLabel: String
    var action: () -> Void
    var body: some View {
        
        
        Button(action: action,
               label: {
            Text(textLabel)
                .font(.title.weight(.semibold))
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: 4, x: 0, y: 4)
        })
    }
}

