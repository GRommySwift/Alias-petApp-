//
//  PlayersModel.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import Foundation

struct PlayersModel: Identifiable {
    let id = UUID()
    let teamName: String
    let playerName: String
}
