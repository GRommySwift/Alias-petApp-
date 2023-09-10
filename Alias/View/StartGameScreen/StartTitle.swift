//
//  StartTitle.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct StartTitle: View {
    var body: some View {
        Text("A L I A S")
            .font(.custom(.buttonFont, size: 60))
            .bold()
            .foregroundColor(.white)
    }
}

struct StartTitle_Previews: PreviewProvider {
    static var previews: some View {
        StartTitle()
    }
}
