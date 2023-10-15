//
//  StartGame.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct StartGame: View {
    
    var body: some View {
       NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea()
                VStack {
                    Spacer()
                    StartTitle()
                    Spacer()
                    StartButton()
                    
                    Spacer()
                }
            }
        }
    }
}

struct StartGame_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationStack {
            StartGame()
            
        }
        .environmentObject(AddNewTeam())
        .environmentObject(GameScreenViewModel())
    }
}
