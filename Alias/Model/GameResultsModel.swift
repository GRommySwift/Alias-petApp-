//
//  GameResultsModel.swift
//  Alias
//
//  Created by Roman on 08/10/2023.
//

import Foundation

struct GameResultsModel: Identifiable {
    
    let id = UUID()
    let selectedWord: String
    var isGuessedRight: Bool
    
}
