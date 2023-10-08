//
//  CardView.swift
//  Alias
//
//  Created by Roman on 01/10/2023.
//

import SwiftUI


struct CardView: View {
    @State var item: String
    var body: some View {
        ZStack {
            Color.white.cornerRadius(12)
            HStack {
                Text("\(item)")
                    .padding()
            }
        }
       // .fixedSize(horizontal: false, vertical: true)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
      //  .listRowBackground(Color("BGColor"))
    }
}
