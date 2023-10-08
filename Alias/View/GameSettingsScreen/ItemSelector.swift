//
//  ItemSelector.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import SwiftUI

struct ItemSelector: View {
    @Binding var item: GameModel
    var body: some View {
        HStack {
            Spacer()
            ZStack(alignment: .leading) {
                HStack {
                    Text(item.nameOfCategory)
                }
            }
            Spacer()
            ZStack {
                Color( item.isAdded ? .green: .purple)
                    .cornerRadius(12)
                    .onTapGesture {
                        item.isAdded.toggle()
                    }
                Image(systemName: item.isAdded ? "checkmark": "plus")
                    .font(.title)
                    .foregroundStyle(.white)
//                    .onTapGesture {
//                        item.isAdded.toggle()
//                    }
            }.frame(width: 70)
                
        }
    }
}
