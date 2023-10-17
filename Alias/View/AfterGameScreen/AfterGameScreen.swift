//
//  AfterGameScreen.swift
//  Alias
//
//  Created by Roman on 17/10/2023.
//

import SwiftUI

struct AfterGameScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                Text("after game screen")
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct AfterGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        AfterGameScreen()
    }
}
