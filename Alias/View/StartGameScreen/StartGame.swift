//
//  StartGame.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct StartGame: View {
    @EnvironmentObject var items: AddNewTeam
    var body: some View {
       NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea()
                VStack {
                    Spacer()
                    StartTitle()
                    Spacer()
                    NavigationLink(destination: TeamSelectorView(items: items)) {
                        StartButton() }
                    
                    Spacer()
                }
            }
        }
    }
}

struct StartGame_Previews: PreviewProvider {
    static var previews: some View {
        StartGame()
    }
}
