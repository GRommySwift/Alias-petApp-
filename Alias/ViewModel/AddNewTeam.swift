//
//  AddNewTeam.swift
//  Alias
//
//  Created by Roman on 17/09/2023.
//

import SwiftUI

class AddNewTeam: ObservableObject {
    
    @Published var teams: [PlayersModel] = []
    
    @Published var currentTeamIndex = 0
    @Published var currentPlayerIndex = 0
    
    
 
     func addNewTeam(teamName: String, playerName1: String, playerName2: String) {
         
         let newItem = PlayersModel(teamName: teamName, players: [playerName1, playerName2], teamImage: "teamImage1", teamSummary: Constants.Summary.summaryArray.randomElement()!, score: 0)
         //PlayersModel(teamName: teamName, playerName1: playerName1, playerName2: playerName2, teamImage: "teamImage1", teamSummary: Constants.Summary.summaryArray.randomElement()!)
             teams.append(newItem)
    }
    
    func nextTeamAndPlayer() {
        currentTeamIndex += 1
        if currentTeamIndex >= teams.count {
            currentTeamIndex = 0
            currentPlayerIndex = 1 - currentPlayerIndex
        }
    }
}
