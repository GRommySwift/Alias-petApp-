//
//  CardReady.swift
//  Alias
//
//  Created by Roman on 11/10/2023.
//

import SwiftUI

struct CardReady: View {
    @State var item: String
    var body: some View {
        CardView(item: item)
            .padding()
            .font(.custom(.buttonFont, size: 30))
            .frame(width: Constants.DisplaySize.screenWidth * 0.9, height: Constants.DisplaySize.screenHeight * 0.35)
    }
}
