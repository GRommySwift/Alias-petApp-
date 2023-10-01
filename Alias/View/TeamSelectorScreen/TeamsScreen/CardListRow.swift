//
//  CardListRow.swift
//  Alias
//
//  Created by Roman on 12/09/2023.
//

import SwiftUI

struct CardListRow: View {
    
    @Binding var item: PlayersModel
    var body: some View {
        ZStack {
            Color.white.cornerRadius(12)
            TeamContentView(item: item)
        }
       // .fixedSize(horizontal: false, vertical: true)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .listRowBackground(Color("BGColor"))
    }
}

