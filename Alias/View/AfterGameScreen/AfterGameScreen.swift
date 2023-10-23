//
//  AfterGameScreen.swift
//  Alias
//
//  Created by Roman on 17/10/2023.
//

import SwiftUI

struct AfterGameScreen: View {
      //@EnvironmentObject var afterGameModel: AfterGameViewModel
    //   @EnvironmentObject var gameModel: GameScreenViewModel
    @EnvironmentObject var addNewTeam: AddNewTeam
    @State private var isPresenting = false
     
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                VStack {
                    HStack {
                        
                        Text("Team1 Score - \(addNewTeam.teams[1].score)")
                    //    Text("Team2 Score - \(addNewTeam.teams[2].score)")
                        
                        
                    }
                    
                    Text("Next player - \(addNewTeam.teams[addNewTeam.currentTeamIndex].players[addNewTeam.currentPlayerIndex])")
                    
                    Button {
                        isPresenting = true
                      //  print("Team2 Score - \(addNewTeam.teams[2].score)")
                    } label: {
                        Text("Start")
                            .font(.title.weight(.semibold))
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            .shadow(radius: 4, x: 0, y: 4)
                    }
                    .position(x: Constants.DisplaySize.screenWidth * 0.5, y: Constants.DisplaySize.screenHeight * 0.83  )
                    .navigationDestination(isPresented: $isPresenting) {
                        GameScreen()
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
//    var currentTeam: PlayersModel {
//        return addNewTeam.currentTeamIndex == 0 ? addNewTeam.teams[0] : addNewTeam.teams[1]
//    }
//
//    var currentPlayer: String {
//        return currentTeam.players[addNewTeam.currentPlayerIndex]
//    }
}

struct AfterGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AfterGameScreen()
        }//.environmentObject(GameScreenViewModel())
          .environmentObject(AddNewTeam())
        //   .environmentObject(AfterGameViewModel())
        
    }
}
