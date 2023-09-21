//
//  PlayersModel.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import Foundation

struct PlayersModel: Identifiable, Hashable {
    let id = UUID().uuidString
    let teamName: String
    let playerName1: String
    let playerName2: String
    let teamImage : String
    let teamSummary: String
}

//extension PlayersModel {
//    static var testData: [PlayersModel] {
//        return [
//        PlayersModel(teamName: "GamaJoba", playerName1: "Roman", playerName2: "Pisya", teamImage: "teamImage1", teamSummary: "Something interesting about this team"),
//        PlayersModel(teamName: "Govno monkeys", playerName1: "Namor", playerName2: "Kaka", teamImage: "teamImage1", teamSummary: "Something interesting about this team"),
//        PlayersModel(teamName: "GamasdfsfJoba", playerName1: "Kiamny", playerName2: "Rivvvz", teamImage: "teamImage1", teamSummary: "Something interesting about this team")
//        ]
//    }
//}
