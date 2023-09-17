//
//  AddNewTeam.swift
//  Alias
//
//  Created by Roman on 17/09/2023.
//

import SwiftUI

class AddNewTeam {
    
    static var teams: [PlayersModel] = []
    
  //  var team1: [PlayersModel] = []
  //  var team2: [PlayersModel] = []
    
    func addNewTeam(teamName: String, playerName1: String, playerName2: String) {
        //if team1.isEmpty {
        AddNewTeam.teams.append(PlayersModel(teamName: teamName, playerName1: playerName1, playerName2: playerName2, teamImage: "teamImage1", teamSummary: Constants.Summary.summaryArray.randomElement()!))
     //       print(team1)
     //   } else {
          //  team2.append(PlayersModel(teamName: teamName, playerName1: playerName1, playerName2: playerName2, teamImage: "temaImage1", teamSummary: Constants.Summary.summaryArray.randomElement()!))
      //  }
    }
}
